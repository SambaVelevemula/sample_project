
function loginformvalidate(){
	
	var username=document.getElementById("uname").value;
	var password=document.getElementById("password").value;
	if(username=="")
	{
		alert("Please enter username");
		document.getElementById('uname').focus();
		return false;
	}
	if(password=="")
	{
		alert("Please enter password");
		document.getElementById('password').focus();
		return false;
	}
	else
	{
		return true;
	} 
	
}