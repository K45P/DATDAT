package FilmDatabase;

import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author Taskforce 141 #Nørd
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        FilmDBQuery filmdbquery = new FilmDBQuery();

        filmdbquery.QueryOne("Christian Bale");
 
    }

}