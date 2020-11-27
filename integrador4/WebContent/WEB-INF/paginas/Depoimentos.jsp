<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<title>Depoimentos</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
	crossorigin="anonymous" />
<link rel="stylesheet" href="././resources/bootstrap/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2? family = Josefin + Sans: wght @ 600 & display = swap"
	rel="stylesheet">
</head>

<style>
input {
	box-shadow: 0 0 0 0;
	border: 0 none;
	outline: 0;
}

.ajuste {
	margin-left: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.distancia {
	margin-left: 40px;
}

.coments {
	display: flex;
	justify-content: center;
}

.conteudo {
	display: flex;
}

.depoimentos {
	width: 70%;
	height: 100%;
	border-radius: 10px;
	background-color: rgb(246, 248, 250);
}

.login-oculto {
	display: none;
}

.caixa-feed {
	width: 400px;
}

.caixa-login {
	display: flex;
	flex-wrap: wrap;
}

.caixa-compartilhar {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.caixa-compartilhar-oculta {
	display: none;
}

@media ( max-width : 1150px) {
	.distancia {
		margin-left: 0;
	}
	.ajuste {
		margin-left: 0px;
	}
	.conteudo {
		flex-wrap: wrap;
	}
	.login {
		display: none;
	}
	.login-oculto {
		display: flex;
		flex-wrap: wrap;
	}
	.depoimentos {
		width: 100%;
	}
}

@media ( max-width : 980px) {
	.login-oculto {
		justify-content: center; 
	}
	.caixa-feed {
		width: 300px;
	}
}

@media ( max-width : 870px) {
	.caixa-feed {
		width: 500px;
	}
	.caixa-compartilhar {
		display: none;
	}
	.caixa-compartilhar-oculta {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}
}

@media ( max-width : 640px) {
	.caixa-feed {
		width: 400px;
	}
}

@media ( max-width : 550px) {
	.caixa-feed {
		width: 300px;
	}
}

@media ( max-width : 499px) {
	.caixa-login {
		display: block;
	}
	.caixa-img-login {
		display: flex;
		justify-content: center;
	}
	.botoes-depoimento {
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}
}

@media ( max-width : 430px) {
	.caixa-feed {
		width: 200px;
	}
}
</style>

<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark justify-content-sm-start"
		style="background-color: rgb(0, 0, 0, 0.8);">
		<div class="container-fluid">
			<img src="././resources/bootstrap/img/logo.png" height="30px"
				width="220px" alt=""> <a
				class="navbar-brand order-1 order-lg-0 ml-lg-0 ml-2 mr-auto"
				href="#"> </a>
			<button class="navbar-toggler align-self-start" type="button">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="collapse cor-responsive navbar-collapse p-3 p-lg-0 mt-lg-0 d-flex flex-column flex-lg-row flex-xl-row justify-content-lg-end mobileMenu"
				id="navbarSupportedContent">
				<ul class="navbar-nav align-self-stretch">

					<li class="nav-item mx-1"><a class="nav-link" href="#"></a> <a
						class="nav-link" href="#"></a></li>

					<li class="nav-item mx-1"><a class="nav-link"
						href="././index.html">Inicio <svg width="1em" height="1em"
								viewBox="0 0 16 16" class="bi bi-house-door" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
									d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z" />
                <path fill-rule="evenodd"
									d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
              </svg> <span class="sr-only">(current)</span></a></li>

					<li class="nav-item mx-1"><a class="nav-link"
						href="././posts.html">Fique por dentro <svg width="1em"
								height="1em" viewBox="0 0 16 16" class="bi bi-newspaper"
								fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
									d="M0 2.5A1.5 1.5 0 0 1 1.5 1h11A1.5 1.5 0 0 1 14 2.5v10.528c0 .3-.05.654-.238.972h.738a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 1 1 0v9a1.5 1.5 0 0 1-1.5 1.5H1.497A1.497 1.497 0 0 1 0 13.5v-11zM12 14c.37 0 .654-.211.853-.441.092-.106.147-.279.147-.531V2.5a.5.5 0 0 0-.5-.5h-11a.5.5 0 0 0-.5.5v11c0 .278.223.5.497.5H12z" />
                <path
									d="M2 3h10v2H2V3zm0 3h4v3H2V6zm0 4h4v1H2v-1zm0 2h4v1H2v-1zm5-6h2v1H7V6zm3 0h2v1h-2V6zM7 8h2v1H7V8zm3 0h2v1h-2V8zm-3 2h2v1H7v-1zm3 0h2v1h-2v-1zm-3 2h2v1H7v-1zm3 0h2v1h-2v-1z" />
              </svg>
					</a></li>

					<li class="nav-item active mx-1"><a class="nav-link"
						href="depoimentosUser">Depoimentos <svg width="1em"
								height="1em" viewBox="0 0 16 16" class="bi bi-chat-square-text"
								fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
									d="M14 1H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h2.5a2 2 0 0 1 1.6.8L8 14.333 9.9 11.8a2 2 0 0 1 1.6-.8H14a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                <path fill-rule="evenodd"
									d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z" />
              </svg>
					</a></li>

					<li class="nav-item mx-1"><a class="nav-link"
						href="feedbackUser">Contatos <svg width="1em"
								height="1em" viewBox="0 0 16 16" class="bi bi-telephone"
								fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
									d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
              </svg>
					</a></li>

				</ul>

			</div>
		</div>
	</nav>

	<div class="conteudo column4 mx-5 my-2 mb-5">

		<section class="mt-3 login"
			style="width: 25%; height: 100%; border-radius: 10px; background-color: rgb(255, 255, 255);">
			<div class="d-flex flex-wrap p-4">
				<div class="d-flex justify-content-center">
					
				</div>

				<div class="pl-4 d-flex justify-content-center flex-wrap align-items-center">
					<img class="ml-n3" src="././resources/bootstrap/img/user.png" alt="">
					<p class="text-dark">Identidade preservada.</p>
				</div>

				<div class="mt-3">
					<p class="text-secondary" style="font-size: 13px;">
						Ao deixar seu depoimento, sua identidade será preservada, por conta disso, não disponibilizamos
						nenhum tipo de cadastro. Qualquer dúvida entre em contato.</p>
				</div>

			</div>

			<hr class="mt-n2">

			<form class="p-4">
				<div class="form-group">
					<label for="exampleFormControlTextarea1" class="text-dark">feedback
						ao desenvolvedor</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						placeholder="Digite possíveis melhorias a nossa plataforma!"
						style="font-size: 14px; resize: none; background-color: rgb(252, 250, 250);"
						rows="5"></textarea>

				</div>

				<button type="submit" class="btn btn-success m-2">Enviar</button>

			</form>

			<img class="mt-5" src="././resources/bootstrap/img/anuncie.png"
				alt="" style="width: 100%"> <img class="mt-2"
				src="././resources/bootstrap/img/anuncie.png" alt=""
				style="width: 100%"> <img class="mt-2"
				src="././resources/bootstrap/img/anuncie.png" alt=""
				style="width: 100%">

		</section>


		<section class="m-3 login-oculto"
			style="width: 100%; border-radius: 10px; background-color: rgb(255, 255, 255);">
			<div class="caixa-login p-4" style="max-width: 380px;">
				<div class="caixa-img-login">
					<img src="././resources/bootstrap/img/user.png"
						style="height: 80px;" alt="">
				</div>

				<div class="pl-2 d-flex flex-wrap caixa-img-login">
					<p class="text-dark">Usuário não logado</p>
					<button type="button" class="btn btn-success mt-1"
						style="width: 100%;">Logar</button>
				</div>

				<div class="mt-2">
					<p class="card-text text-secondary">Para públicar um depoimento
						ou nos contribuir com algum feedback, é preciso estar logado.</p>
				</div>


			</div>

			<form class="p-4 d-flex">
				<div class="form-group caixa-feed">
					<label for="exampleFormControlTextarea1" class="text-dark">feedback
						ao desenvolvedor</label>
					<textarea class="form-control" id="exampleFormControlTextarea1"
						placeholder="Digite possíveis melhorias a nossa plataforma!"
						style="font-size: 14px; resize: none; background-color: rgb(252, 250, 250); width: 100%;"
						rows="5"></textarea>
					<button type="submit" class="btn btn-success mx-1 mt-3">Enviar</button>
				</div>
			</form>

		</section>

		<section class="m-3 depoimentos">

			<div class="my-3 px-3 py-2"
				style="background-color: rgb(246, 248, 250);">

				<div class="caixa-compartilhar">
					<h2 class="text-dark">Compartilhe seu depoimento!</h2>
					

					<div class="my-1">
						<button type="button" class="btn btn-success" data-toggle="modal"
							data-target="#exampleModal">Escrever</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title text-dark" id="exampleModalLabel">Depoimento</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form method="POST" action="depoimentosUser">
										<div class="modal-body">
											<textarea class="form-control"
												id="exampleFormControlTextarea1"
												placeholder="Digite seu depoimento com total anônimato!"
												name="descricao" value="${dp.descricao}"
												style="font-size: 14px; resize: none; background-color: rgb(252, 250, 250);"
												rows="5"></textarea>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Fechar</button>
											<button type="submit" class="btn btn-primary">Salvar</button>
										</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="caixa-compartilhar-oculta">

					<div class=" d-flex justify-content-center" style="width: 100%">
						<h2 class="text-dark text-center">Compartilhe seu depoimento!</h2>
					</div>

					<div class="my-3 botoes-depoimento">
						<button type="button" class="btn btn-success" data-toggle="modal"
							data-target="#exampleModal">Escrever</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title text-dark" id="exampleModalLabel">Depoimento</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form method="POST" action="depoimentosUser">
										<div class="modal-body">
											<textarea class="form-control"
												id="exampleFormControlTextarea1"
												placeholder="Digite seu depoimento com total anônimato!"
												name="descricao" value="${dp.descricao}"
												style="font-size: 14px; resize: none; background-color: rgb(252, 250, 250);"
												rows="5"></textarea>
											Data <input type="text" name="data" value="${dp.publicacao}"></input>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Fechar</button>
											<button type="submit" class="btn btn-primary">Salvar</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

			<hr>
			
			<h6 class="text-dark ml-3">${mensagem2}</h6>
			<h6 class="text-dark ml-3">${mensagem}</h6>
			<c:forEach var="d" items="${depoimentos}">
				<div class="card m-4">
					<div class="card-body">

						<div class="d-flex">
							<img src="././resources/bootstrap/img/user.png" style="height:30px;" alt="">
							<h5 class="card-title text-dark ml-3">Anônima</h5>
						</div>
						<p class="card-text text-dark mt-2">${d.descricao}</p>

					</div>
				</div>
			</c:forEach>
		</section>




	</div>







	<footer class="divisao6 p-5 mt-5">
		<div class="container aln d-flex justify-content-around">
			<div class="sessao1">
				<div class="d-flex bloco-camuflar2 pl-2 pt-2">
					<div class="btn-camuflar2 rounded-circle">
						<img src="././resources/bootstrap/img/danger (3).png"
							class="mt-n1" alt="" style="height: 25px; width: 25px;">
					</div>
					<p class="ml-3 text-ligh">Caso tenho que ocultar o conteudo
						deste site, clique neste botao e voce sera redirecionado a uma
						pagina fictisa.</p>
				</div>

				<div class="d-flex p-2">



					<div cla ss="bg-light rounded-circle circulo">
						<img src="././resources/bootstrap/img/phone-call.png" alt="">
					</div>

					<p class="ml-3 text-light">(16) 99777-7264</p>

				</div>


				<div class="d-flex p-2">
					<div class="bg-light rounded-circle circulo">
						<img src="././resources/bootstrap/img/email.png" alt="">
					</div>
					<p class="ml-3 text-ligh">cc@receitadd.com</p>
				</div>



			</div>
			<div class="sessao2">
				<div class="p-2 pl-3">
					<h4>Sobre nós</h4>
					<p>Criamos essa plataforma para ser mais facil encontrar
						conteúdo referente ao tema, mostrar que mulher não está sozinha!
						Com a ajuda de depoimentos e também dar total apoio para o que
						precisar.</p>
				</div>

				<div class="p-2">
					<div class="container d-flex justify-content-around">
						<div class="bg-light rounded-circle circulo">
							<img src="././resources/bootstrap/img/facebook.png"
								alt="Facebook Receita do Dia">
						</div>

						<div class="bg-light rounded-circle circulo">
							<img src="././resources/bootstrap/img/instagram.png"
								alt="instagram Receita do Dia">
						</div>

						<div class="bg-light rounded-circle circulo">
							<img src="././resources/bootstrap/img/twitter.png"
								alt="Twitter Receita do Dia">
						</div>

						<div class="bg-light rounded-circle circulo">
							<img src="././resources/bootstrap/img/youtube.png"
								alt="Youtube Receita do Dia">
						</div>

					</div>

				</div>


			</div>

		</div>


	</footer>

	<div class="d-flex justify-content-center align-items-center"
		style="background-color: black; width: 100%; height: 40px;">
		<h6>Copyright © 2020 | Receita do Dia</h6>
	</div>







	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
		integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04="
		crossorigin="anonymous"></script>

	<script src="./js/script.js"></script>
</body>

</html>