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
       /*
        RegMaalCtrl maalCtrl = new RegMaalCtrl ();
        maalCtrl.connect();
        maalCtrl.startReg(123123);
        maalCtrl.regPost(0, 0, 70);
        maalCtrl.regPost(1, 31, 100);
        maalCtrl.regPost(2, 32, 120);
        maalCtrl.regPost(3, 33, 140);
        maalCtrl.regPost(4, 34, 160);
        maalCtrl.regPost(5, 35, 180);
        maalCtrl.regPost(6, 36, 200);
        maalCtrl.regPost(7, 37, 220);
        maalCtrl.regPost(8, 150, 230);
        maalCtrl.regPost(9, 175, 245);
        if (maalCtrl.sluttReg()) {
            System.out.println("Profit!!");
        }
       */
       
        
        
        ResultatCtrl resultatCtrl = new ResultatCtrl ();
        resultatCtrl.connect();
        resultatCtrl.printKlasseResultat("H50");
       
    }

}