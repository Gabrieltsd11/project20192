<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="gr__201_149_127_174">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link href="StyleLogin.css" rel="stylesheet" />
    <link rel="Shortcut Icon" href="Acomp.jpg" type="image/jpg">

    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.js"></script>
    <script type="text/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
    <script>
        $(function() {
            $('input[name=dataPedido]').datepicker();
        });
    </script>
    <script type="text/javascript">
        function validar() {
            var usuario = formcadast.usuario.value;
            var cpf = formcadast.cpf.value;
            var cnpj = formcadast.cnpj.value;
            var sts = formcadast.sts.value;
            var idp = formcadast.idp.value;
            var np = formcadast.np.value;

            //Validar que vai ter entrada e que vai ter no mínimo 5 caracteres 
            if (usuario == "" || usuario.length <= 4) {
                alert('Preencha o campo usuário corretamente');
                formcadast.usuario.focus();
                return false;
            }
            //Validar que vai ter entrada e que vai ter '-', com 12 caracteres 
            if (cpf == "" || cpf.indexOf('-') == -1 ||cpf.length <= 11)) {
                alert('Preencha o campo CPF corretamente, não utilizando pontos, utilizando apenas o " - " para os números de validação');
                formcadast.cpf.focus();
                return false;
            }
            if (cnpj == "" || cnpj.length <= 14) {
                alert('Preencha o campo CNPJ corretamente');
                formcadast.cnpj.focus();
                return false;
            }
            if (sts == "") {
                alert('Preencha o campo Status corretamente.');
                formcadast.sts.focus();
                return false;
            }
            if (idp == "") {
                alert('Preencha o campo ID do Pedido corretamente.');
                formcadast.idp.focus();
                return false;
            }
            if (np == "") {
                alert('Preencha o campo Numero do pedido corretamente.');
                formcadast.np.focus();
                return false;
            }
        }
    </script>

    <script type="text/javascript">
        function resize() {
            bodyObj = document.body;
            bodyObj.style.width = (document.documentElement.clientWidth < 1000 ? 1000 : document.documentElement.clientWidth) + "px"
        }

        function pageLoad() {
            resize();
            window.onresize = resize;
        };
    </script>

    <title>Cadastro</title>
</head>

<body onload="pageLoad()" style="width: 1000px;">
    <div class="topLogo">
        <table cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td>
                        <table border="0" cellspacing="0" width="100%">
                            <tbody>
                                <tr>
                                    <td id="ft-td">
                                        <img src="Acomp.jpg" alt="pi" height="100px" width="150px" />
                                        </a>
                                    </td>
                                    <td id="sd-td">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td id="tname" class="st1">AcomP
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td id="tdesc" class="st2">Acompanhamento de pedidos, Entrega e Portal de Acompanhamento</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="loginBox">
        <div class="panelThre" align="center">
            <div align="center" class="picDiv">
                <form name="formcadast" action='UsuarioClienteController' onsubmit="return validar()" method="POST">
                    <input type="text" name="usuario" placeholder="Usuário" value="<c:out value="${pedido.nomeCliente}" />" >
                    <br><br>
                    <input type="text" name="cpf" placeholder="CPF" value="<c:out value="${pedido.cpf}" />">
                    <br><br>
                    <input type="text" name="cnpj" placeholder="CNPJ" value="<c:out value="${pedido.cnpj}" />">
                    <br><br>
                    <input type="text" name="status" placeholder="Status" value="<c:out value="${pedido.status}" />">
                    <br><br>
                    <input type="text" name="idPedido" placeholder="Id do Pedido" value="<c:out value="${pedido.idPedido}" />">
                    <br><br>
                    <input type="text" name="numeroPedido" placeholder="Número Do Pedido" value="<c:out value="${pedido.numeroPedido}" />"> 
                    <br><br>
                    <input type="text" placeholder="dd/MM/yyyy" name="dataPedido" data-date-format="dd/MM/yyyy"
                    value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" />" />
                    <p>
                        <input type="submit" value="Cadastrar" name="submit" onclick="return validar()">
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>