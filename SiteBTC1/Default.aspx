<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SiteBTC1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGIN - pg_LOGIN_SEM_BACKGROUND</title>
    	<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
<style id="applicationStylesheet" type="text/css">
    @import url(https://fonts.googleapis.com/css?family=Varela);



label {
  margin-top: 6px;
  line-height: 17px;
}

a {
  color: #fff;
}

a:focus,
a:hover {
  color: #008080;
}

.checkbox-inline+.checkbox-inline,
.radio-inline+.radio-inline {
  margin-top: 6px;
}

/******* Login Page *******/


.relative {
  position: relative;
}

.login-container-wrapper .logo,
.login-container-wrapper .welcome {
  margin: 0 0 20px 0;
  font-size: 16px;
  color: #fff;
  text-align: center;
  letter-spacing: 1px;
   text-shadow: 2px 2px 5px #764f00;
}

.login-container-wrapper .logo {
  text-align: center;
  position: absolute;
  top: -42px;
  margin: 0 auto;
  width: 25%;
  left: 37.5%;
  border-radius: 50%;
  background-color: rgba(255,170,0,.5);
  padding: 25px;
  box-shadow: 0px 0px 9px 2px  #835700;
}

.login-container-wrapper {
  max-width: 400px;
  margin: 10% auto 8%;
  padding: 40px;
  box-sizing: border-box;
  background: rgba(255, 170, 0, 0.5) no-repeat;
  box-shadow: 1px 1px 10px 1px #835700,  12px 12px 10px 0px #835700;
  position: relative;
  padding-top: 80px;
  background-image: url("bitinho2.png") ;
}

.logo .fa {
  font-size: 50px;
}
.login input:focus + .fa{
  color:#fff;
}
.login-form .form-group {
  margin-right: 0;
  margin-left: 0;
}

.login-form i {
  position: absolute;
  top: 18px;
  right: 20px;
  color: #fff;
}

.login-form .input-lg {
  font-size: 16px;
  height: 52px;
  padding: 10px 25px;
  border-radius: 0;
}

.login input[type="email"],
.login input[type="password"],
.login input:focus {
  background-color: rgba(255, 170, 6, 0.75);
  border: 1px solid #764f00;
  color: #fff;
  border-left: 4px solid #764f00;
}

.login input:focus {
  border-left: 4px solid #764f00;
}

input:-webkit-autofill,
textarea:-webkit-autofill,
select:-webkit-autofill {
  background-color: rgba(118, 79, 0, 0.75)!important;
  background-image: none;
  color: rgb(0, 0, 0);
  border-color: #764f00;
}

.login .checkbox label,
.login .checkbox a {
  color: #764f00;
}

.btn-success {
  background-color: transparent;
  background-image: none;
  padding: 5px 5px;
  border-radius: 0;
  border: 2px solid #764f00;
  box-shadow: inset 0 0 0 0 #764f00;
  -webkit-transition: all ease 0.8s;
  -moz-transition: all ease 0.8s;
  transition: all ease 0.8s;
}

.btn-success:focus,
.btn-success:hover,
.btn-success.active,
.btn-success:active {
  background-color: transparent;
  border-color: #fff;
  box-shadow: inset 0 0 100px 0 #764f00;
  color: #FFF;
}
#particles-js {
/*   background: cornflowerblue; */
  width:100%;
  height:100%;
  position:absolute;
  z-index:-1;
}

.btnS {
  background-color: #ffaa00;
  width:150px;
  text-align:center;
  line-height: -58px;
  border-radius: 30px;
  font-size:15px;
  color: white;
  display: inline-block;
  padding: 5px 5px;
  text-decoration: none;
  border: 2px solid #fff;
}

/* Animation class */
._shine {
  background-image: linear-gradient(270deg, rgba(245,239,170, 0) 48.44%, #f5eb85  75.52%, rgba(245,239,170, 0) 100%);
  background-repeat: no-repeat;
  animation: bg-move linear 1.5s infinite;
}

/* Animation keyframe */
@-webkit-keyframes bg-move {
  0%   { background-position: -200px 0; }
  100% { background-position: 400px 0; }
}
@keyframes bg-move {
  0%   { background-position: -200px 0; }
  100% { background-position: 400px 0; }
}




	</style>

</head>
<body >

	
	<div class="container" style="margin-top:150px; width:100%; ">
		<div class="login-container-wrapper clearfix" style="border-radius:30px; height: 550px; border: 4px solid rgba(255,170,0,0.5); border-bottom:100px solid #fecb61; ">
			<div class="logo" style="height:100px; width:100px; align-content:center; padding:18px; background-color:rgba(255,170,0,.6)">
				<img style="width:60px; height:60px; " src="bit.png" />
			</div>
			<div class="welcome" ><strong> Bem vindo de volta!</strong><br /> Login</div>
			<br />
			
			<form class="form-horizontal login-form">
				<div class="form-group relative" >
					<input id="login_username" style="border-radius:20px; height:50px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="email" placeholder="E-mail" required>
					<i class="fa fa-user" style="color: #ffaa00; margin-left:280px; position:absolute; top: 18px" ></i>
				</div>
				<div class="form-group relative password">
					<input id="login_password" style="border-radius:20px; height:50px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="password" placeholder="Senha" required>
					<i class="fa fa-lock" style="color: #ffaa00; margin-left:280px; position:absolute; top: 18px" ></i>
				</div>
				
			  <div class="form-group pull-left" style="margin: 0px;" >
			  <button type="submit" class="btn btn-success btn-lg btn-block btnS _shine " style="box-shadow: 1px 1px 5px 1px #b86606; width: 310px; height:35px; text-align:center;">Entrar</button>
			  </div>
       <div class="checkbox pull-right" style=" margin-left: 195px">
			    <label> <a class="forget" href="" title="forget" style=" text-shadow: 2px 2px 5px #764f00; font-size:12px; color:#bb6e14; ">Esqueci minha senha</a> </label>
			  </div> 
				 <div class="form-group pull-left" style="margin-top: 10px;" >
			  <a href="About.aspx" class="btn btn-success btn-lg btn-block btnS _shine " style="box-shadow: 1px 1px 5px 1px #b86606; background-color:#fecb61; width: 310px; height:35px; text-align:center;">Cadastre-se</a>
			  </div>
			  
			</form>
			
		</div>
   
    
	</div>
	

</body>
</html>
</asp:Content>
