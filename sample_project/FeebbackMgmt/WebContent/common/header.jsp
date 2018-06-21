<table style="width: 100%;padding-bottom:5px;padding-top:8px;padding-bottom:8px">
	<tr>
	<td style="width: 70%">
			<div class="logo"></div>
	</td>
	<td  style="width: 30%;text-align:right">
			<div class="whiteFont" style="padding:4px"><a class="textDocor whiteFont Bold" href="chgPwd.do">Change Password</a><strong>&nbsp;|&nbsp;</strong><a class="textDocor whiteFont Bold" href="login.do?action=logout">Logout</a></div>
			<div class="whiteFont Bold" style="padding:4px" >Welcome
		<logic:present name="userBean" 
									scope="session">
		<bean:write name="userBean" scope="session" property="firstName" />
		<bean:write name="userBean" scope="session" property="lastName" />
		</logic:present>
	</td>
	</tr>
</table>
