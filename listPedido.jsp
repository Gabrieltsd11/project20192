<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <title>Cadastro de Pedido</title>
    </head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>Id do Pedido</th>
                <th>Numero do Pedido</th>
                <th>Nome do Cliente</th>
                <th>Cpf</th>
                <th>Cnpj</th>
                <th>Data do Pedido</th>
                <th>Status do Pedido</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${pedidos}" var="pedido">
                <tr>
                    <td><c:out value="${pedido.idPedido}" /></td>
                    <td><c:out value="${pedido.numeroPedido}" /></td>
                    <td><c:out value="${pedido.nomeCliente}" /></td>
                    <td><c:out value="${pedido.cpf}" /></td>
                    <td><c:out value="${pedido.cnpj}" /></td>
                    <td><fmt:formatDate pattern="dd/MM/yyyy" value="${pedido.dataPedido}" /></td>
                    <td><c:out value="${pedido.status}" /></td>

                    <td><a href="PedidoController?action=edit&idpedido=<c:out value="${pedido.idPedido}"/>">Update</a></td>
                    <td><a href="PedidoController?action=delete&idpedido=<c:out value="${pedido.idPedido}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="PedidoController?action=insert">Adicionar Pedido</a></p>
</body>
</html>
