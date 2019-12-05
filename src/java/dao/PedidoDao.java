package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Pedido;
import util.DbUtil;

public class PedidoDao {

    private Connection connection;

    public PedidoDao() {
        connection = DbUtil.getConnection();
    }

    public void addPedido(Pedido pedido) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into pedidos(idpedido, nomecliente, cpf, cnpj, numeropedido, datapedido, status) values (?, ?, ?, ?, ?, ?, ?)");
            // Parameters start with 1
            preparedStatement.setInt(1, pedido.getIdPedido());
            preparedStatement.setString(2, pedido.getNomeCliente());
            preparedStatement.setString(3, pedido.getCpf());
            preparedStatement.setString(4, pedido.getCnpj());
            preparedStatement.setString(5, pedido.getNumeroPedido());
            System.out.println(pedido.getDataPedido());
            preparedStatement.setDate(6, new java.sql.Date(pedido.getDataPedido().getTime()));
            preparedStatement.setString(7, pedido.getStatus());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            System.out.println("Pedido adicionado com sucesso!");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePedido(int idPedido) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from pedidos where idpedido=?");
            // Parameters start with 1
            preparedStatement.setInt(1, idPedido);
            preparedStatement.executeUpdate();
            System.out.println("Pedido excluído com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePedido(Pedido pedido) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update pedidos set nomecliente=?, cpf=?, cnpj=?, datapedido=?, numeropedido=?, status=?" +
                            "where idpedido=?");
            // Parameters start with 1
            preparedStatement.setInt(1, pedido.getIdPedido());
            preparedStatement.setString(2, pedido.getNomeCliente());
            preparedStatement.setString(3, pedido.getCpf());
            preparedStatement.setString(4, pedido.getCnpj());
            preparedStatement.setString(5, pedido.getNumeroPedido());
            preparedStatement.setDate(6, new java.sql.Date(pedido.getDataPedido().getTime()));
            preparedStatement.setString(7, pedido.getStatus());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            System.out.println("Pedido alterado com sucesso!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Pedido> getAllPedidos() {
        List<Pedido> listaDePedido = new ArrayList<Pedido>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from pedidos");
            while (rs.next()) {
                Pedido pedidos = new Pedido();
                pedidos.setIdPedido(rs.getInt("idpedido"));
                pedidos.setNomeCliente(rs.getString("nomecliente"));
                pedidos.setCpf(rs.getString("cpf"));
                pedidos.setCnpj(rs.getString("cnpj"));
                pedidos.setNumeroPedido(rs.getString("numeropedido"));
                pedidos.setDataPedido(rs.getDate("datapedido"));
                pedidos.setStatus(rs.getString("status"));
                listaDePedido.add(pedidos);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaDePedido;
    }

    public Pedido getPedidoById(int idPedido) {
        Pedido pedido = new Pedido();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from pedidos where idpedido=?");
            preparedStatement.setInt(1, idPedido);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                
                pedido.setIdPedido(rs.getInt("idpedido"));
                pedido.setNomeCliente(rs.getString("nomecliente"));
                pedido.setCpf(rs.getString("cpf"));
                pedido.setCnpj(rs.getString("cnpj"));
                pedido.setNumeroPedido(rs.getString("numeropedido"));
                pedido.setDataPedido(rs.getDate("datapedido"));
                pedido.setStatus(rs.getString("status"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pedido;
    }
}
