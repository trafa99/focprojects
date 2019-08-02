/* JS functions for cadastro_interesse */
function addCadastroInteresse(idCampanhaCadastroInteresse, nomeInteressado, dddTelefoneInteressado, numeroTelefoneInteressado, emailInteressado, sexoInteressado, dataNascimentoInteressado, codCursoInteresse) {
	$.ajax({
		url: "https://www.oswaldocruz.br/cadastro_interesse/services/CadastroInteresse/getXMLAddCadastroInteresse.asp",
		type: "POST",
		data: {
			id_campanha_cadastro_interesse: idCampanhaCadastroInteresse,
			nome_interessado: nomeInteressado,
			ddd_telefone_interessado: dddTelefoneInteressado,
			numero_telefone_interessado: numeroTelefoneInteressado,
			email_interessado: emailInteressado,
			sexo_interessado: sexoInteressado,
			data_nascimento_interessado: dataNascimentoInteressado,
			id_curso_interesse: codCursoInteresse
		},
		dataType: "xml",
		timeout: 30000,
		success: function (xml) {
			xmlSaveCadastroInteresseSucessoHandler(xml);
		},
		error: function (xhr, ajaxOptions, thrownError) {
			xmlSaveCadastroInteresseErroHandler(thrownError);
		}
	});
}
function nomeCurso (idCurso){
	if (idCurso == 2) {
		return "Administração";
	}
	if (idCurso == 3) {
		return "Contabilidade";
	}
	if (idCurso == 15) {
		return "Design";
	}
	if (idCurso == 4) {
		return "Economia";
	}
	if (idCurso == 314) {
		return "Enfermagem";
	}
	if (idCurso == 31) {
		return "Engenharia Ambiental";
	}
	if (idCurso == 363) {
		return "Engenharia Civil";
	}
	if (idCurso == 7) {
		return "Engenharia de Produção";
	}
	if (idCurso == 8) {
		return "Engenharia Química";
	}
	if (idCurso == 5) {
		return "Farmácia";
	}
	if (idCurso == 13) {
		return "Publicidade e Propaganda";
	}
	if (idCurso == 1) {
		return "Química Bacharelado";
	}
	if (idCurso == 11) {
		return "Química Industrial";
	}
	if (idCurso == 66) {
		return "Química Licenciatura";
	}
	if (idCurso == 18) {
		return "Tecnologia em Alimentos";
	}
	if (idCurso == 27) {
		return "Tecnologia em Análise e Desenvolvimento de Sistemas";
	}
	if (idCurso == 56) {
		return "Tecnologia em Cosméticos";
	}
	if (idCurso == 20) {
		return "Tecnologia em Gestão Ambiental";
	}
	if (idCurso == 614) {
		return "Tecnologia em Logística";
	}
	if (idCurso == 25) {
		return "Tecnologia em Polímeros (Plásticos)";
	}else{
		return "Nenhum curso foi escolhido";
	}
}

function xmlSaveCadastroInteresseSucessoHandler(xml) {
	noRoot = $(xml).find('root')
	noCodErro = parseInt(noRoot.find('cod_erro').text());
	noMsgErro = noRoot.find('msg_erro').text();
	if (noCodErro == "0") {
		idCadastroInteresse = noRoot.find('id_cadastro_interesse').text();

		noParametros = noRoot.find('parametros');
		nomeInteressado = noParametros.find('nome_interessado').text();
		emailInteressado = noParametros.find('email_interessado').text();
		celularInteressado = noParametros.find('ddd_telefone_interessado').text() + " " + noParametros.find('numero_telefone_interessado').text();
		id_curso_interesse = noParametros.find('id_curso_interesse').text();

		//destinatario = "atendimento@oswaldocruz.br";
		destinatario = "leticia.lima@oswaldocruz.br";
		//destinatario = "clodoaldo.matos@oswaldocruz.br";
		remetente = "noreplay@oswaldocruz.br";
		assunto = "Novo cadastro no sistema Visite a Oswaldo Cruz";
		mensagem =	"<html>" +
					"<head>" +
					"</head>" +
					"<body>" +
					"Prezado(a), " +
					"<br />" +
					"Ocorreu um novo cadastro no sistema Visite a Oswaldo Cruz para o agendamento de <b>visitas monitoradas</b>." +
					"<br />" +
					"O CANDIDATO (\"" + nomeInteressado + "\"), E-MAIL (\"" + emailInteressado + "\"), CELULAR (\"" + celularInteressado + "\")" +
					" possui interesse no CURSO (\"" + nomeCurso(id_curso_interesse) + "\")." +
					"<br />" +
					"Por favor, entre em contato com o candidato no endereço de e-mail informado acima para agendar a visita." +
					"<br />" +
					"<br />" +
					"Cordialmente," +
					"<br />" +
					"Portal Oswaldo Cruz" +
					"<br />" +
					"Mensagem automática. FAVOR NÃO RESPONDER"
					//"Seu e-mail de contato é:  \"" + emailInteressado + "\". Seu celular para contato é: \"" + celularInteressado + "\"." +
					//"O ID do Curso selecionado é:  \"" + id_curso_interesse + "\"." +
					"<body>" +
					"</html>"
		comCopia = ""
		comCopiaOculta = "clodoaldo.matos@oswaldocruz.br"
		enviaEmail(destinatario, remetente, assunto, mensagem, comCopia, comCopiaOculta);

		limpaCampos();
		window.location = "sucesso.asp?id_cadastro_interesse=" + idCadastroInteresse;
	}
	else
		alert("Desculpe. Houve um erro ao realizar o cadastro. \nCodErro: " + noCodErro + "\nMensagem: " + noMsgErro);
}

function xmlSaveCadastroInteresseErroHandler(erro) {
	alert("Desculpe. Houve um erro ao realizar o cadastro. Por favor, tente novamente.");
}

function enviaEmail(destinatario, remetente, assunto, mensagem) {
	$.ajax({
		url: "https://www.oswaldocruz.br/cadastro_interesse/services/Email/getXMLEnviaEmail.asp",
		type: "POST",
		data: {
			destinatario: destinatario,
			remetente: remetente,
			assunto: assunto,
			mensagem: mensagem,
			comCopia: "",
			comCopiaOculta: "clodoaldo.matos@oswaldocruz.br"
		},
		dataType: "xml",
		timeout: 30000,
		success: function (xml) {
			xmlEnviaEmailSucessoHandler(xml);
		},
		error: function (xhr, ajaxOptions, thrownError) {
			xmlEnviaEmailErroHandler(thrownError);
		}
	});
}

function xmlEnviaEmailSucessoHandler(xml) {
	noRoot = $(xml).find('root')
	noCodErro = parseInt(noRoot.find('cod_erro').text());
	noMsgErro = noRoot.find('msg_erro').text();
	if (noCodErro != "0") {
		alert("Desculpe. Houve um erro ao realizar o envio de Email. \nCodErro: " + noCodErro + "\nMensagem: " + noMsgErro);
	}
}

function xmlEnviaEmailErroHandler(erro) {
	alert("Desculpe. Houve um erro ao realizar o envio de e-mail. Por favor, tente novamente.");
}

function limpaCampos() {
	$("#txtNome").val("");
	$("#txtEmail").val("");
	$("#txtDDDCelular").val("");
	$("#txtCelular").val("");
	$("#cmbSexo").val("");
	$("#txtDataNascimento").val("");
	$("#cmbCurso").val("");
	$("#cmbCampanha").val("");
}