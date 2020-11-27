<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>Login</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y=" crossorigin="anonymous" />

<link href="././resources/bootstrap/css/style.css"rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2? family = Josefin + Sans: wght @ 600 & display = swap"
		rel="stylesheet">
</head>

<style>
	.tam1{
	width: 500px;
	}

	@media (max-width: 554px){
		.tam1{width: 400px;}
	}

	@media (max-width: 436px){
		.tam1{width: 300px;}
	}
</style>

<body>

	<nav class="navbar navbar-expand-lg navbar-dark justify-content-sm-start" style="background-color: rgb(0,0,0,0.8);">
		<div class="container-fluid">
			<img src="././resources/bootstrap/img/logo.png" height="30px" width="220px" alt="">
			<a class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 mr-auto" href="#">
			</a>
			<button class="navbar-toggler align-self-start" type="button">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse cor-responsive navbar-collapse p-3 p-lg-0 mt-lg-0 d-flex flex-column flex-lg-row flex-xl-row justify-content-lg-end mobileMenu"
				id="navbarSupportedContent">
				<ul class="navbar-nav align-self-stretch">

					<li class="nav-item mx-1">
						<a class="nav-link" href="#"></a>
						<a class="nav-link" href="#"></a>
					</li>

					<li class="nav-item mx-1">
						<a class="nav-link" href="#">Administração do site
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-shield-fill-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M8 .5c-.662 0-1.77.249-2.813.525a61.11 61.11 0 0 0-2.772.815 1.454 1.454 0 0 0-1.003 1.184c-.573 4.197.756 7.307 2.368 9.365a11.192 11.192 0 0 0 2.417 2.3c.371.256.715.451 1.007.586.27.124.558.225.796.225s.527-.101.796-.225c.292-.135.636-.33 1.007-.586a11.191 11.191 0 0 0 2.418-2.3c1.611-2.058 2.94-5.168 2.367-9.365a1.454 1.454 0 0 0-1.003-1.184 61.09 61.09 0 0 0-2.772-.815C9.77.749 8.663.5 8 .5zm2.854 6.354a.5.5 0 0 0-.708-.708L7.5 8.793 6.354 7.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                              </svg>
						</a>
					</li>

				</ul>

			</div>
		</div>
	</nav>


	<div class="bg-light p-5 d-flex flex-wrap justify-content-center" style="height: 100%;">
		<section>
			<div class="card tam1" >
		<div class="card-body">
			<h4 class="card-title text-dark">Entrar </h4>

			<form id="formEntrar" class="text-danger" data-toggle="validator" role="form" 
			action="<%=request.getContextPath()%>/login" method="post">
				<div class="form-group">
					<label for="textNome" class="control-label text-dark">Usuário</label>
					<div class="input-group mb-2 mr-sm-2">
						<div class="input-group-prepend">
							<div class="input-group-text" style="color: black;">
								<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill"
									fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd"
										d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
								</svg>
							</div>
						</div>
						<input id="textNome" class="form-control" name="usuario"
							placeholder="Digite um nome de usuario válido" type="text" required>
					</div>
				</div>

				<div class="form-group">
					<label for="textNome" class="control-label text-dark">Senha</label>
					<div class="input-group mb-2 mr-sm-2">
						<div class="input-group-prepend">
							<div class="input-group-text" style="color: black;">
								<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-lock-fill"
									fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path
										d="M2.5 9a2 2 0 0 1 2-2h7a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-7a2 2 0 0 1-2-2V9z" />
									<path fill-rule="evenodd"
										d="M4.5 4a3.5 3.5 0 1 1 7 0v3h-1V4a2.5 2.5 0 0 0-5 0v3h-1V4z" />
								</svg>
							</div>
						</div>
						<input id="inputPassword" class="form-control" name="senha" placeholder="Digite sua Senha..." type="password"
							data-minlength="6" data-error="Senha inválida." required>
					</div>
				</div>


				<div class="form-group"> <button type="submit" value="Submit" class="btn btn-success">Cadastrar</button> </div>

			</form>

		</div>
    </div>
    
	</section>

	</div>


	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
		integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04=" crossorigin="anonymous"></script>
	<script src="./js/script.js"></script>
	<script src="././resources/bootstrap/js/validator.min.js"></script>
	<script src="././resources/bootstrap/js/validator.js"></script>
</body>

</html>