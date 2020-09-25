/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package fogfunctions;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Administrator
 */
public class computingactions {
    private int id=0;
    private String name=null;
    private String username=null;
    private String password=null;
    private String emailid=null;
    private String address=null;
    private String mobile=null;
    private String question1=null;
    private String answer1=null;
    private String question2=null;
    private String answer2=null;
    private String question3=null;
    private String answer3=null;
    private String question4=null;
    private String answer4=null;
    private String question5=null;
    private String answer5=null;
    
    private int fileid=0;
    private String filename=null;
    private String filepath=null;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the emailid
     */
    public String getEmailid() {
        return emailid;
    }

    /**
     * @param emailid the emailid to set
     */
    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    
    public void insertdata()
    {
        
        //int Count=0;
        //int id=1;
        try
        {
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
            
            PreparedStatement pstmt=connection.prepareStatement("insert into user_data values(?,?,?,?,?,?,?)");
          
            pstmt.setInt(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, username);
            pstmt.setString(4, password);
            pstmt.setString(5, emailid);
            pstmt.setString(6, address);
            pstmt.setString(7, mobile);
    
            pstmt.executeUpdate();
              
        }
        catch(Exception e)
        {
            
        }
    }
    
    
    public void insertanswers()
    {
        try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
       
            PreparedStatement pstmt=connection.prepareStatement("insert into user_answers values(?,?,?,?,?,?,?,?,?,?,?)");
            
            pstmt.setInt(1,id);
            System.out.println(id);
            pstmt.setString(2, getQuestion1());
            System.out.println(getQuestion1());
            pstmt.setString(3, getAnswer1());
            System.out.println(getAnswer1());
            pstmt.setString(4, question2);
            System.out.println(question2);
            pstmt.setString(5, answer2);
            System.out.println(answer2);
            pstmt.setString(6, question3);
            System.out.println(question3);
            pstmt.setString(7, answer3);
            System.out.println(answer3);
            pstmt.setString(8, question4);
            System.out.println(question4);
            pstmt.setString(9, answer4);
            System.out.println(answer4);
            pstmt.setString(10,question5);
            System.out.println(question5);
            pstmt.setString(11,answer5);
            System.out.println(answer5);
            
            pstmt.executeUpdate();
            System.out.println("Inserted");
         }
       catch(Exception e)
        {
       
        }

    }

    public String  validateuser(String user_data,String pass_data)
    {
        String username=null,password=null;
        
        String result=null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
            
            Statement stmt=connection.createStatement();
            String query="select * from user_data where UserName='"+user_data+"'";
            System.out.println(query);
            ResultSet rs=stmt.executeQuery(query);
            
            while(rs.next())
            {
                username=rs.getString(3);
                password=rs.getString(4);
                
                if((username.equals(user_data))&&(password.equals(pass_data)))
                        {
                           result="true"; 
                        }
                else
                {
                    result="false";
                }
            }
        }
        catch(Exception e)
        {
            
        }
        return result;
    }
    
    public void insertfiles()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
            
            PreparedStatement pstmt=connection.prepareStatement("insert into file_details values(?,?,?)");
            
            pstmt.setInt(1, fileid);
            pstmt.setString(2, filename);
            pstmt.setString(3, filepath);
            
            pstmt.executeUpdate();
        }
        catch(Exception e)
        {
        }
        
    }
    
    public String checkanswer(String q1,String a1,String q2,String a2,String q3,String a3,String q4,String a4,String q5,String a5,int uid)
    {
        
        String result=null;
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");  
          
          Statement stmt=connection.createStatement();
          String query="select * from user_answers where UserId="+uid;
          ResultSet rs=stmt.executeQuery(query);
          
          while(rs.next())
          {
              if((q1.equals(rs.getString(2)))&&(a1.equals(rs.getString(3)))&&(q2.equals(rs.getString(4)))&&(a2.equals(rs.getString(5)))&&(q3.equals(rs.getString(6)))&&(a3.equals(rs.getString(7)))&&(q4.equals(rs.getString(8)))&&(a4.equals(rs.getString(9)))&&(q5.equals(rs.getString(10)))&&(a5.equals(rs.getString(11))))
              {
                  result="true";
              }
              else
              {
                  result="false";
              }
                      
          }
        }
        catch(Exception e)
        {
            
        }
        return result;
    }
    public String getQuestion2() {
        return question2;
    }

    /**
     * @param question2 the question2 to set
     */
    public void setQuestion2(String question2) {
        this.question2 = question2;
    }

    /**
     * @return the answer2
     */
    public String getAnswer2() {
        return answer2;
    }

    /**
     * @param answer2 the answer2 to set
     */
    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    /**
     * @return the question3
     */
    public String getQuestion3() {
        return question3;
    }

    /**
     * @param question3 the question3 to set
     */
    public void setQuestion3(String question3) {
        this.question3 = question3;
    }

    /**
     * @return the answer3
     */
    public String getAnswer3() {
        return answer3;
    }

    /**
     * @param answer3 the answer3 to set
     */
    public void setAnswer3(String answer3) {
        this.answer3 = answer3;
    }

    /**
     * @return the question4
     */
    public String getQuestion4() {
        return question4;
    }

    /**
     * @param question4 the question4 to set
     */
    public void setQuestion4(String question4) {
        this.question4 = question4;
    }

    /**
     * @return the answer4
     */
    public String getAnswer4() {
        return answer4;
    }

    /**
     * @param answer4 the answer4 to set
     */
    public void setAnswer4(String answer4) {
        this.answer4 = answer4;
    }

    /**
     * @return the question5
     */
    public String getQuestion5() {
        return question5;
    }

    /**
     * @param question5 the question5 to set
     */
    public void setQuestion5(String question5) {
        this.question5 = question5;
    }

    /**
     * @return the answer5
     */
    public String getAnswer5() {
        return answer5;
    }

    /**
     * @param answer5 the answer5 to set
     */
    public void setAnswer5(String answer5) {
        this.answer5 = answer5;
    }

    /**
     * @return the question1
     */
    public String getQuestion1() {
        return question1;
    }

    /**
     * @param question1 the question1 to set
     */
    public void setQuestion1(String question1) {
        this.question1 = question1;
    }

    /**
     * @return the answer1
     */
    public String getAnswer1() {
        return answer1;
    }

    /**
     * @param answer1 the answer1 to set
     */
    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    /**
     * @return the fileid
     */
    public int getFileid() {
        return fileid;
    }

    /**
     * @param fileid the fileid to set
     */
    public void setFileid(int fileid) {
        this.fileid = fileid;
    }

    /**
     * @return the filename
     */
    public String getFilename() {
        return filename;
    }

    /**
     * @param filename the filename to set
     */
    public void setFilename(String filename) {
        this.filename = filename;
    }

    /**
     * @return the filepath
     */
    public String getFilepath() {
        return filepath;
    }

    /**
     * @param filepath the filepath to set
     */
    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }
}
