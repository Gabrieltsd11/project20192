package controller;


import dao.PedidoDao;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pedido;


@WebServlet(name = "pedidos", urlPatterns = {"/PedidoController"})
public class PedidoController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/pedido.jsp";
    private static String LIST_PEDIDO = "/listPedido.jsp";
    private PedidoDao dao;

    public PedidoController() {
        super();
        dao = new PedidoDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int idPedido = Integer.parseInt(request.getParameter("idpedido"));
            dao.deletePedido(idPedido);
            forward = LIST_PEDIDO;
            request.setAttribute("pedidos", dao.getAllPedidos());    
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int idPedido = Integer.parseInt(request.getParameter("idpedido"));
            Pedido pedido = dao.getPedidoById(idPedido);
            request.setAttribute("pedidos", pedido);
        } else if (action.equalsIgnoreCase("listPedido")){
            forward = LIST_PEDIDO;
            request.setAttribute("pedidos", dao.getAllPedidos());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Pedido pedido = new Pedido();
        pedido.setNumeroPedido(request.getParameter("numeropedido"));
        pedido.setStatus(request.getParameter("status"));
        pedido.setNomeCliente(request.getParameter("nomecliente"));
        try {
            Date dataPedido=null;
            String teste = request.getParameter("datapedido");
            System.out.println(teste);
            if(request.getParameter("datapedido")!=null){
                dataPedido = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("datapedido"));
            }
            else{
                dataPedido = null;
            }
                
            pedido.setDataPedido(dataPedido);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        pedido.setCpf(request.getParameter("cpf"));
        pedido.setCnpj(request.getParameter("cnpj"));
        String idPedido = request.getParameter("idpedido");
        if(idPedido == null || idPedido.isEmpty())
        {
           dao.addPedido(pedido);
        }
        else
        {
            pedido.setIdPedido(Integer.parseInt(idPedido));
           dao.updatePedido(pedido);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_PEDIDO);
        request.setAttribute("pedidos", dao.getAllPedidos());
        view.forward(request, response);
    }
}