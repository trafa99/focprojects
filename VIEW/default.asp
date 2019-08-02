<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Visite Oswaldo Cruz</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Faculdades Oswaldo Cruz, Centro de Pós-Graduação, Faculdade de Tecnologia, Faculdade de Comunicação e Design, Escola Técnica e Colégio" />
    <meta name="author" content="Equipe Web Grupo Oswaldo Cruz" />
    <meta name="keywords" content="Faculdades Oswaldo Cruz, Centro de Pós-Graduação, Faculdade de Tecnologia, Faculdade de Comunicação e Design, Escola Técnica, Ensino Médio, Pós-graduação, pos-graduacao, faculdades, faculdade, oswaldo cruz, sao paulo, cursos, vestibular, processo seletivo, inscricoes abertas, curso de farmácia, curso de química, engenharia química, química industrial"
    />
    <meta name="theme-color" content="#001E3E" />
    <meta name="msapplication-TileColor" content="#da532c">

    <!--- Ícones --->
    <link rel="apple-touch-icon" sizes="180x180" href="../RESOURCES/IMGS/icons [others]/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../RESOURCES/IMGS/icons [others]//favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="../RESOURCES/IMGS/icons [others]//favicon-16x16.png">
    <link rel="mask-icon" href="../RESOURCES/IMGS/icons [others]/safari-pinned-tab.svg" color="#5bbad5">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <!-- My CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/jumbotron.css">
</head>

<body>
    <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!--Header/Navbar-->
    <nav class="navbar navbar-expand-md fixed-top NavbarColor droidSansFont">
        <a class="navbar-brand" href="#">
            <img src="../RESOURCES/IMGS/Outros/conhecagrupo.png" width="300" height="50" alt="">
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
              <i class="fas fa-layer-group" id="navbar-toggler-icon"></i>
            </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav nav-fill">
                <li class="nav-item">
                    <a class="nav-link active" href="https://www.oswaldocruz.br/visite/VIEW/default.asp">Visite</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.oswaldocruz.br/visite/VIEW/conheca.asp">Desde 1914</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.oswaldocruz.br/visite/VIEW/galeria.asp">Galeria</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://www.oswaldocruz.br/visite/VIEW/localizacao.asp">Localização</a>
                </li>
        </div>
        </li>
        </ul>
    </nav>

    <main role="main">
        <!-- Main jumbotron for a primary marketing message or call to action -->
        <div class="jumbotron jumbotron-fluid">
            <div class="container mt-5">
                <p class="mt-5 cabinFont">Agradecemos o seu interesse em conhecer o Grupo Oswaldo Cruz!<br/>No serviço de visita monitorada, você será apresentado às instalações de uma instituição com mais de 100 anos de tradição no compromisso com a educação.<br/>Nesta visita,
                    você poderá conhecer nossas salas de aulas, laboratórios, estúdios, ateliês e centros de convivência, além de também interagir com os nossos alunos e, até mesmo, agendar um bate papo com o coordenador do seu curso de graduação desejado.<br/><br/>
                    Preencha o formulário abaixo com seus dados, o curso de interesse e aguarde. Nossa Equipe de Atendimento entrará em contato em breve para agendar sua visita.</p>
            </div>
        </div>
        <!--Header End-->
    </main>
    <!--Formulário-->
    <div class="container-fluid container-form container-xs-12 container-sm-12 container-md-12 container-lg-12 container-xl-12 mb-5 mt-4 justify-content-center">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mx-auto">
                <form class="form-signin needs-validation mt-2" id="formulario" onsubmit="return cadastroVisite();" novalidate>
                <img class="mb-4 mx-auto d-block" src="../RESOURCES/IMGS/logos/logoAzulFundoBrancoVertical.jpg" alt="" width="120" height="120">
                    <h5 class="h3 card-title text-center droidSansFont">Preencha os Dados</h5>
                    <input type="hidden" id="hdnIdCampanha" name="idCampanha" value="<%=id_campanha%>"/>
                    <label for="nameInput" class="sr-only">Insira seu Nome:</label>
                    <input type="text" class="form-control" placeholder="Nome: *" id="nomeInput" name="nome" required/>
                    <label for="emailInput" class="sr-only">Insira seu E-mail:</label>
                    <input type="email" class="form-control" placeholder="E-mail: *" id="emailInput" name="email" required/>
                    <label for="mobileNumberInput" class="sr-only">Insira seu número:</label>
                    <input type="text" class="form-control" placeholder="Celular: *" id="celularInput" name="celular" required/>
                    <label for="cmbCurso" class="sr-only">Insira o curso desejado:</label>
                    <select class="form-control custom-select mb-3" id="cmbCurso" name="codCurso" required>
                        <option value="" name="opcaoInvalida1" selected disabled>Escolha o curso de interesse *</option>
                        <option value="" class="font-weight-bold" disabled>Cursos de Nível Superior</option>
                        <option value="2">Administração</option>
                        <option value="3">Contabilidade</option>
                        <option value="15">Design</option>
                        <option value="4">Economia</option>
                        <option value="314">Enfermagem</option>
                        <option value="31">Engenharia Ambiental</option>
                        <option value="363">Engenharia Civil</option>
                        <option value="7">Engenharia de Produção</option>
                        <option value="8">Engenharia Química</option>
                        <option value="5">Farmácia</option>
                        <option value="13">Publicidade e Propaganda</option>
                        <option value="1">Química Bacharelado</option>
                        <option value="11">Química Industrial</option>
                        <option value="66">Química Licenciatura</option>
                        <option value="18">Tecnologia em Alimentos</option>
                        <option value="27">Tecnologia em Análise e Desenvolvimento de Sistemas</option>
                        <option value="56">Tecnologia em Cosméticos</option>
                        <option value="20">Tecnologia em Gestão Ambiental</option>
                        <option value="614">Tecnologia em Logística</option>
                        <option value="21">Tecnologia em Polímeros (Plásticos)</option>
                    </select>
                    <button class="btn btnContact btn-block mt-3 text-uppercase" type="submit" onclick="return validaCadastroVisite();">Enviar</button>
                </form>
            </div>
        </div>
    </div>

    <!--Footer-->
    <footer id="footer">
        <div class="container-fluid droidSansFont">
            <div class="row FooterBgColor text-center text-xs-center text-sm-left text-md-left">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-2">
                    <h5>Contatos</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a><i class="fa fa-school mr-2"></i>Rua Brigadeiro Galvão, 540 -
                        Barra Funda</a></li>
                        <li><a>São Paulo - SP CEP: 01151-000</a></li>
                        <li><a>Próximo ao Metrô Marechal Deodoro</a></li>
                        <li><a><i class="fa fa-phone mr-2"></i>Tel.: (11) 3824-3660</a></li>
                        <li><a><i class="fa fa-fax mr-2"></i>Fax.: (11) 3824-3660</a></li>
                    </ul>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-2">
                    <h5>Sites</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="https://www.oswaldocruz.br/servicos/publicacoes/default.asp"><i
                                                                    class="fa fa-scroll mr-2"></i>Publicações
                                                            Acadêmicas</a></li>
                        <li><a href="http://revista.oswaldocruz.br/"><i
                                                                    class="fa fa-book-reader mr-2"></i>Revista
                                                            Acadêmica</a>
                            <li><a href="https://www.oswaldocruz.br/WWW/VIEW/imprensa.asp"><i
                                                                    class="fa fa-microphone-alt mr-2"></i>Sala de
                                                            Imprensa</a></li>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 col-xl-4 mt-2">
                    <h5 class="">Institucional</h5>
                    <ul class="list-unstyled quick-links">
                        <li><a href="https://www.consultebolsas.com.br/"><i
                                                                    class="fa fa-book mr-2"></i>Consulte Bolsas</a>
                        </li>
                        <li><a href="https://www.oswaldocruz.br/vestibular/"><i
                                                                    class="fa fa-graduation-cap mr-2"></i>Processo
                                                            Seletivo - Graduação</a>
                        </li>
                        <li><a href="https://www.oswaldocruz.br/pos/"><i
                                                                    class="fa fa-user-graduate mr-2"></i>Pós-Graduação</a>
                        </li>

                        <li><a href="https://www.oswaldocruz.br/WWW/VIEW/politicaPrivacidade.asp"><i
                                                                    class="fa fa-user-secret mr-2"></i>Política de
                                                            Privacidade</a></li>
                        <li><a href="https://www.oswaldocruz.br/WWW/VIEW/atendimento.asp"><i
                                                                    class="fa fa-headset mr-2"></i>Atendimento</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <footer id="footer">
        <div class="bg-white droidSansFont">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 col-lg-5 text-center text-md-left mt-5">
                        <h6 class="mb-0 text-cor-foc">Acompanhe nossas Mídias Sociais!
                        </h6>
                    </div>
                    <div class="col-md-6 col-lg-7 text-center text-md-right mt-5">
                        <!-- Facebook -->
                        <a rel="noopener" href="https://www.facebook.com/oswaldocruz1914" target="_blank" class="btn btn-default" aria-label="Link para o Facebook">
                            <span style="color: #001e3e">
                                                                    <i class="fab fa-facebook-square mr-4"></i>
                                                            </span>
                        </a>
                        <!-- Twitter -->
                        <a rel="noopener" href="https://twitter.com/oswaldocruz1914" target="_blank" class="btn btn-default" aria-label="Link para o Twitter">
                            <span style="color: #001e3e">
                                                                    <i class="fab fa-twitter  mr-4"></i>
                                                            </span>
                        </a>
                        <!-- Youtube -->
                        <a rel="noopener" href="https://www.youtube.com/channel/UC-xzF-r8GYum9tuzCoW9L_A" target="_blank" class="btn btn-default" aria-label="Link para o YouTube">
                            <span style="color: #001e3e">
                                                                    <i class="fab fa-youtube mr-4"></i>
                                                            </span>
                        </a>
                        <!-- Linkedin -->
                        <a rel="noopener" href="https://br.linkedin.com/company/faculdades-oswaldo-cruz" target="_blank" class="btn btn-default" aria-label="Link para o Linkedin">
                            <span style="color: #001e3e">
                                                                    <i class="fab fa-linkedin-in  mr-4"></i>
                                                            </span>
                        </a>
                        <!-- Instagram -->
                        <a rel="noopener" href="https://instagram.com/oswaldocruz1914/" target="_blank" class="btn btn-default" aria-label="Link para o Instagram">
                            <span style="color: #001e3e">
                                                                    <i class="fab fa-instagram "></i>
                                                            </span>
                        </a>
                    </div>
                </div>
            </div>
    </footer>
    <footer id="footer">
        <div class="row mt-5 droidSansFont">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 mt-2 mt-sm-2 text-center text-white">
                Copyright 2002-2019©. Todos os direitos reservados.
                <p><small>Os conteúdos aqui publicados são de responsabilidade de seus autores,
                                                        não
                                                        refletindo,
                                                        necessariamente, a opinião da instituição.</small> </p>
                <p><a href="https://www.oswaldocruz.br/WWW/VIEW/" class="text-white" target="_blank">Faculdades Oswaldo Cruz</a> |
                    <a href="https://www.oswaldocruz.br/www/VIEW/equipe_web.asp" class="text-white" target="_blank">Equipe Web</a>
                </p>
            </div>
        </div>
    </footer>
    <!--Fim Footer-->
    <!----- Modal -------->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalSucesso" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-confirm">
                            <div class="modal-content">
                                <div class="modal-header">
                                        <img class="img-fluid mx-auto d-block" src="https://cdn.dribbble.com/users/1751799/screenshots/5512482/check02.gif" width="200" height="100" alt="Gif Sucesso">
                                </div>
                                <div class="modal-body">
                                    <h4 class="text-center">Ótimo!</h4>
                                    <p class="text-center">Nossa Equipe de Atendimento em breve entrará em contato com você no
                                    endereço de e-mail informado em seu cadastro para agendar sua visita.<br />
                                    <b>Estamos esperando por você!</b></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success btn-block" data-dismiss="modal">Fechar</button>
                                </div>
                            </div>
                        </div>
                    </div>
    <!---- Fim Modal -------->

            <!-- Core Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
            <script defer src="https://use.fontawesome.com/releases/v5.6.3/js/all.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert"></script>

            <!--- Máscaras do Form de Cadastro --->
            <script type="text/javascript">
                $(document).ready(function(){
                    $('#celularInput').mask('(00) 00000-0000');
                    });

                function cadastroVisite() {
                    if (validaCadastroVisite()) {
                        var nome_interessado = $("[name='nome']").val();
                        var email_interessado = $("[name='email']").val();
                        var ddd_telefone_interessado = $("[name='celular']").val().substr(1, 2);
                        var numero_telefone_interessado = $("[name='celular']").val().substr(5, 12);
                        var sexo_interessado = "I";
                        var data_nascimento_interessado = "01/01/1900";
                        var id_curso_interessado = $("#cmbCurso").val();
                        var id_campanha_cadastro_interesse = $("#hdnIdCampanha").val();

                        addCadastroInteresse(id_campanha_cadastro_interesse, nome_interessado, ddd_telefone_interessado, numero_telefone_interessado, email_interessado, sexo_interessado, data_nascimento_interessado, id_curso_interessado);
                    }

                    return false;
                }

                function validaCadastroVisite() {
                    var regexpEmail = /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/
                    //var regexpCelular = /^[1-9]{1}[0-9]{1} [0-9]{9}$/

                    if ($("[name='nome']").val() == "") {
                        swal({
                            icon: "error",
                            text: "O Nome informado é inválido.",
                            });
                        $("[name='nome']").focus();
                        return false;
                    }
                    if ($("[name='email']").val() == "") {
                        swal({
                            icon: "warning",
                            text: "O preenchimento do campo E-mail é obrigatório.",
                            });
                        $("[name='email']").focus();
                        return false;
                    }
                    if (!regexpEmail.test($("[name='email']").val())) {
                        swal({
                            icon: "error",
                            text: "O E-mail informado é inválido.",
                            });
                        $("[name='email']").focus();
                        return false;
                    }
                    if ($("[name='celular']").val() == "") {
                        swal({
                            icon: "warning",
                            text: "O preenchimento do campo Celular é obrigatório.",
                            });
                        $("[name='celular']").focus();
                        return false;
                    }
                    if ($("[name='codCurso']").val() == "") {
                        swal({
                            icon: "warning",
                            text: "O Curso deve ser selecionado.",
                        });
                        $("[name='codCurso']").focus();
                        return false;
                    }
                    return true;
                }

            (function() {
                'use strict';
                window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                        else if (form.checkValidity() == true) {
                        $('#myModal').modal("show");
                        
                        // stop form submit only for demo
                        event.preventDefault();
                        }
                    form.classList.add('was-validated');
                    }, false);
                    });
                }, false);
                })();
            </script>
</body>

</html>