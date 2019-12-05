<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.js"></script>
<script type="text/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Adicionar novo Pedido</title>
</head>
<body>
    <script>
        $(function() {
            $('input[name=datapedido]').datepicker();
        });
    </script>

    <form method="POST" action='PedidoController' name="frmAddPedido">
        Id do Pedido : <input type="text" readonly="readonly" name="idpedido"
            value="<c:out value="${pedido.idPedido}" />" /> <br /> 
        Nome do Pedido : <input
            type="text" name="numeropedido"
            value="<c:out value="${pedido.numeroPedido}" />" /> <br /> 
        Nome do Cliente : <input
            type="text" name="nomecliente"
            value="<c:out value="${pedido.nomeCliente}" />" /> <br /> 
        Cpf : <input type="text" name="cpf"
            value="<c:out value="${pedido.cpf}" />" /> <br /> 
        Cnpj : <input
            type="text" name="cnpj"
            value="<c:out value="${pedido.Cnpj}" />" /> <br /> 
        Status : <input
            type="text" name="status"
            value="<c:out value="${pedido.Status}" />" /> <br /> 
         Data do Pedido : <input
            type="text" placeholder="dd/MM/yyyy" name="datapedido" data-date-format="dd/MM/yyyy"
            value="<fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" />" /> <br /> 
         <input
            type="submit" value="Submit" />
    </form>
</body>
</html>