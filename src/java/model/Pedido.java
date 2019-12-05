
package model;

import java.util.Date;


public class Pedido {
    private String nomeCliente;
    private String cpf;
    private String cnpj;
    private String numeroPedido;
    private Date dataPedido;
    private int idPedido;
    private String status;

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getNumeroPedido() {
        return numeroPedido;
    }

    public void setNumeroPedido(String numeroPedido) {
        this.numeroPedido = numeroPedido;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    

    @Override
    public String toString() {
        return "Pedido{" + "nomeCliente=" + nomeCliente + ", cpf=" + cpf + ", cnpj=" + cnpj + ", numeroPedido=" + numeroPedido + ", dataPedido=" + dataPedido + ", idPedido=" + idPedido + ", status=" + status + '}';
    }

    
   
}