package FilmDatabase;

import java.sql.Connection;
import java.sql.*;



public class FilmDBQuery extends FilmDBConn{

    public FilmDBQuery(){}

    public void QueryOne(String actorName){
        connect();
       
        

        try{
            Statement stmt = conn.createStatement();
            String query = "select rolle from Person where Navn="+actorName+" inner join Skuespiller on Person.PersonID = Skuespiller.SkuespillerID;";

            ResultSet rs = stmt.executeQuery(query);

            int nr = 1;
            System.out.println("Resultat:");
            while (rs.next()) {
                System.out.println(" " + nr++ + " "+ rs.getString("rolle"));
            }
            
        }catch (Exception e) { 
            System.out.println("db error in QueryOne");
        }
        

    }
}