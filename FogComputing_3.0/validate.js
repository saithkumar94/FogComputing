

function validate(loginform)
{
	var p=new Array();
	for(var i=0;i<7;i++)
	{
            p[i]=loginform.elements[i];
	}
	
	if(p[1].value=="")
	{
	  alert("Name should not be empty");
	  p[1].focus();
	  return false;
	}
	else if(p[1].value!="")
	{
		if(!nameValid(p[1]))
		{
				return false;
		}
	
	}
	if(p[2].value=="")
	{
		alert("Username should not be empty");
		p[2].focus();
		return false;
	}
	else if(p[2].value!="")
	{
		if(!nameValid(p[2]))
		{
				return false;
		}
	
	}
	if(p[3].value=="")
	{
		alert("Password should not be empty");
		p[3].focus();
		return false;
	}
	 else if(p[3].value!="")
	{
		if(!nameValid(p[3]))
		{
				return false;
		}
	
	}
	if(p[4].value=="")
	{
		alert("mail id should not be empty");
		p[4].focus();
		return false;
	}
	  else if(p[4].value!="")
	{
		if(!emailvalid(p[4]))
		{
				return false;
		}
	
	}
	if(p[5].value=="")
	{
		alert("Address should not be empty");
		p[5].focus();
		return false;
	}
	  else if(p[5].value!="")
	{
		if(!nameValid(p[5]))
		{
				return false;
		}
	
	}
	if(p[6].value=="")
	{
		alert("mobile no should not be empty");
		p[6].focus();
		return false;
	}
	  else if(p[6].value!="")
	{
		if(!phoneValid(p[6]))
		{
				return false;
		}
	
	}
}



function nameValid(name)
{
	var name1=name.value;
	var o=/^[a-z]+$/i;
	if(!o.test(name1))
	{
		alert("Enter only Characters");
		name.focus();
		name.value="";
		return false;
	}
	else{
		return true;
	}
		
}


function emailvalid(mail)
{
	var mail1=mail.value;
	var mail2=/^[a-z\d]+[.-_]?[a-z0-9]+@[a-z]+.com$/i;
	if(!mail2.test(mail1))
	{
		alert("invalid mail Id");
		mail.value="";
		mail.focus();
		return false;
	}
	else
	{
		return true;
	}
}

function phoneValid(pNum)
{
  var phnum1=pNum.value;
  var phnum2=/^[7|8|9]+\d{9}$/;
  if(!phnum2.test(phnum1))
	{
	    alert("phone num invalid it should contain 10 digits and starts with num 7|8|9");
		pNum.value="";
		pNum.focus();
		return false;
	}
	else
	{
		return true;
	}
}