<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SiteBTC1.About" %>

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
  text-align: left;
  letter-spacing: 1px;
   text-shadow: 1px 1px 3px white;
}

.login-container-wrapper .logo {
  text-align: center;
  position: absolute;
  top: -42px;
  margin: 0 auto;
  width: 550px;
  left: 37.5%;
  border-radius: 50%;
  background-color: rgba(255,170,0,.5);
  padding: 25px;
  box-shadow: 0px 0px 9px 2px  #835700;
}

.login-container-wrapper {
  max-width: 1080px;
  margin: 10% auto 8%;
  padding: 40px;
  box-sizing: border-box;
  
  background: rgb(251, 251, 214) no-repeat;
  
  
  box-shadow: 1px 1px 10px 1px #835700,  12px 12px 10px 0px #835700;
  position: relative;
  padding-top: 80px;
 
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
  padding: 8px 50px;
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
  border-radius: 30px;
  
  color: white;
  display: inline-block;
  padding: 10px 20px;
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


/*FileUpload*/


.profile-pic {
    width: 200px;
    max-height: 200px;
    display: inline-block;
}

.file-upload {
    display: none;
}
.circle {
    border-radius: 100% !important;
    overflow: hidden;
    width: 128px;
    height: 128px;
    border: 2px solid rgba(255, 255, 255, 0.2);
    position: absolute;
    top: 72px;
}
img {
    max-width: 100%;
    height: auto;
}
.p-image {
  position: absolute;
  top: 167px;
  right: 30px;
  color: #666666;
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.p-image:hover {
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.upload-button {
  font-size: 1.2em;
}

.upload-button:hover {
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
  color: #999;
}

	</style>
	<script>
        $(document).ready(function () {


            var readURL = function (input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('.profile-pic').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }


            $(".file-upload").on('change', function () {
                readURL(this);
            });

            $(".upload-button").on('click', function () {
                $(".file-upload").click();
            });
        });
    </script>
</head>
<body >

	
	<div class="container" style="margin-top:150px; width:100%; ">
		<div class="login-container-wrapper clearfix" style="border-radius:30px; height: 550px; border: 4px solid rgba(255,170,0,0.5); border-bottom:100px solid #fecb61; ">
			<div class="logo" style="height:100px; width:100px; align-content:center; padding:18px; background-color:rgba(255,170,0,.6); left: 46%; top: -50px; ">
				<img style="width:60px; height:60px; " src="bit.png" />
			</div>
			<div class="welcome"  style="color:#ffaa00"><strong> Seja PREMIUM! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><asp:RadioButton ID="RadioButton3" runat="server" Text="&nbsp; Pacote básico" style="color:#ffaa00; margin-left: 55px;"/> <asp:RadioButton ID="RadioButton5" runat="server" Text="&nbsp; Pacote premium" style="color:#ffaa00; margin-left: 15px;"/> <asp:RadioButton ID="RadioButton4" runat="server" Text="&nbsp; Pacote diamond" style="color:#ffaa00; margin-left: 15px; "/> <br /> Cadastro
				<div class="row">
   <div class="small-12 medium-2 large-2 columns">
     <div class="circle" style="margin-left: 840px; margin-top: 30px;">
       <img class="profile-pic" src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg">

     </div>
     <div class="p-image" style="margin-right:75px; margin-top: 40px;">
       <i class="fa fa-camera upload-button"></i>
        <input class="file-upload" type="file" accept="image/*"/>
     </div>
  </div>
</div>
			</div>
			<br />
			
			<form class="form-horizontal login-form">
				<div class="form-group relative" >
					<input id="login_nome" style="border-radius:20px;float:left; margin-bottom: 8px;height:50px; width:260px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="email" placeholder="Nome:" required />
					   <input id="login_senha" style="border-radius:20px;margin-bottom: 8px; float:left; height:50px; width:260px; margin-left: 8px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="password" placeholder="Senha" required>
				<input id="login_cpf" style="border-radius:20px; float:left; height:50px; margin-bottom: 8px; width:260px; margin-left: 8px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="CPF: ___.___.___-__" required>
                  
					
				</div>
				
				<div class="form-group relative password">

					<input id="login_username" style="border-radius:20px; margin-top: 8px; height:50px;float:left; width:310px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="Username" required>
					<input id="login_nascimento" style="border-radius:20px;float:left; height:50px;margin-top: 8px; margin-left:8px; width:310px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="Data de Nascimento: __/__/____" required />
                      <asp:DropDownList ID="DropDownList1" runat="server" style="border-radius:20px; float:left; height:50px; margin-bottom: 8px; margin-top: 8px; width:310px; margin-left: 8px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" >
                        <asp:ListItem>Sexo</asp:ListItem>
                        <asp:ListItem>Feminino</asp:ListItem>
                    <asp:ListItem >Masculino</asp:ListItem>

                    </asp:DropDownList>
				</div>
				
                <div class="form-group relative password">

					<input id="login_username" style="border-radius:20px; margin-top: 8px; height:50px;float:left; width:310px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="Username" required>
					<input id="login_nascimento" style="border-radius:20px;float:left; height:50px;margin-top: 8px; margin-left:8px; width:310px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="Data de Nascimento: __/__/____" required />
                    <input id="login_username" style="border-radius:20px; margin-top: 8px; height:50px;float:left; width:310px;margin-left:8px; border:1px solid #fecb61; box-shadow: 1px 1px 2px 1px #b86606;" class="form-control input-lg" type="text" placeholder="Username" required>
                  
				</div>
              
			  <div class="form-group pull-left" style="float: right; margin-top: 108px; margin-right:10px;  ">
                  <button type="submit" class="btn btn-success btn-lg btn-block btnS _shine " style="box-shadow: 1px 1px 5px 1px #b86606; width:180px">Cadastrar</button>
			  </div>
                			  <div class="form-group pull-left" style="float: right; margin-top: 115px; margin-right:580px; ">

                			  <a href="#" style="text-decoration: none; color:#fff; font-size:14px; margin-right:50px; margin-top: 55px;"> Pague com MetaMask <img src="metamask.png" style="height:30px; width:30px; margin-left:5px;"/></a>
                </div>
       
			  
			</form>
			
		</div>
   
    
	</div>
	

</body>
</html>
</asp:Content>
