<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Aluno.aspx.cs" Inherits="WebGetaoDeHoras.Login_Aluno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->

<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<script src="https://kit.fontawesome.com/yourcode.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="styleA.css">
<!-- ALL VERSION CSS -->
<link rel="stylesheet" href="css/versions.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizer for Portfolio -->
<script src="js/modernizer.js"></script>

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>INETE - Login Aluno</title>
    <style>
        .btn-login {
            font-family: 'Quicksand', sans-serif;
            font-weight: bolder;
            font-size: medium;
            display: inline-flex;
            vertical-align: middle;
            align-items: center;
            text-align: center;
            border-radius: 0;
            border: none;
            box-shadow: none !important;
            border-radius: 0;
            width: 150px;
            min-height: 60px;
            background-image: linear-gradient(#9557d6, rgba(91,103,167,0));
            color: white;
        }

        .btn_back {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
            padding: 8px 16px;
            font-size: large;
            background-color: transparent;
            color: white;
            margin-top: 25px;
        }
    </style>
</head>
<body class="host_version">
    
    	<!-- LOADER -->
	<div id="preloader">
		<div class="loader-container">
			<div class="progress-br float shadow">
				<div class="progress__item"></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->	

    <div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false">
        <!-- Indicators -->
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                <div id="aluno" class="first-section" style="background-image: url('images/Bg_aluno.jpg');">
                    <div class="dtab">
                        <div style="background-color: #9557d69c; width: 600px; min-height: 664px; margin: 126px auto">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 text-center">
                                    <a href="Home.aspx" class="btn_back">Go Back !</a>
                                    <div class="big-tagline">
                                        <h2 style="margin-top:50px"><strong style="color: white">ALUNO</strong></h2>
                                        <h2 style="font-size: 30px"><strong style="color: lightgray">INETE</strong></h2>
                                        <div style=" margin-top:50px">
                                            <form runat="server">
                                                <div class="form-group">
                                                    <asp:TextBox ID="txt_UsernameA" runat="server" name="username" placeholder="Username" required=""></asp:TextBox>
                                                </div>
                                                <div style="margin-top:25px" class="form-group">
                                                    <asp:TextBox ID="txt_PasswordA" runat="server" name="password" placeholder="Password" required="" type="password"></asp:TextBox>
                                                </div>
                                                <div style=" margin-top:75px">
                                                    <asp:Button ID="btn_LoginA" runat="server" Text="LOGIN" class="login100-form-btn" BackColor="Transparent" CssClass="btn-login" OnClick="btn_LoginA_Click" />
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end row -->
                        </div>
                        <!-- end container -->
                    </div>
                </div>
                <!-- end section -->
            </div>
        </div>
    </div>
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/timeline.min.js"></script>
    <script>
        timeline(document.querySelectorAll('.timeline'), {
            forceVerticalMode: 700,
            mode: 'horizontal',
            verticalStartPosition: 'left',
            visibleItems: 4
        });
	</script>
</body>
</html>
