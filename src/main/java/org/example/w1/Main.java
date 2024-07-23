package org.example.w1;

import java.sql.Connection;
import java.sql.DriverManager;

public class Main {

    public static void main(String[] args) throws Exception {

        //Driver Loading -Dynamic Loading
        Class.forName("org.mariadb.jdbc.Driver");

        for (int i = 0; i < 500; i++) {

            new Thread(()-> {
                try{
                    Class.forName("org.mariadb.jdbc.Driver");
                    Connection connection =
                            DriverManager.getConnection("jdbc:mariadb://localhost:13306/webdb"
                                    ,"webdbuser"
                                    ,"webdbuser");
                    System.out.println(connection);

                    Thread.sleep(50000);

                    //connection.close();

                }catch(Exception e){
                    e.printStackTrace();
                }
            }).start();

            Thread.sleep(70);
        }
    }
}
