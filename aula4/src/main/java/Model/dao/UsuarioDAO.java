package Model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.bean.UsuarioBean;
import Model.factory.ConnectionFactory;

public class UsuarioDAO {
    
    private Connection con;
    
    public UsuarioDAO(){
        this.con = new ConnectionFactory().getConnection();
    }
    
    public boolean autenticar(String nome, String senha){
        // SELECT * FROM usuario WHERE nome = 'joao' AND senha = '456'
        String sql = "SELECT * FROM usuario WHERE nome = ?  AND senha = ?";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nome);
            ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            if ( rs.next() ){
                return true;
            }else{
                return false;
            }
            
        } catch (SQLException ex){
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
