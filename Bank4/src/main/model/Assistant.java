package main.model;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

public class Assistant implements Serializable {
    static volatile Assistant _this;

    /**
     * Singleton
     * @return
     */
    public static Assistant getInstance (){
        if (_this == null) {

            System.out.println("----------------- "+_this);

            _this = new Assistant();
            Employee c = new Employee("AdminKey","admin","admin");

            Client s = new Client("Gosha","a","a");

            _this.users.put(c.getLogin(),c);

            _this.users.put(s.getLogin(),s);


        }

        return _this;
    }
    Assistant(){
        super();
        users = new HashMap();
        fromNewRequest = new ArrayList<>();
    }

    /**
     * Whether user exist
      * @param login
     * @return
     */
    public static boolean checkIsUserExists(String login) {

      return   getInstance ().users.get(login)!=null;

    }

    /**
     * Check Login password & return User if one exists
     * @return
     */
    public static User authorize(String login, String password){
        System.out.println(getInstance().users.get(login + " ------- " + password));
       User retUser =  getInstance().users.get(login);


       if (retUser== null){
           System.out.println(retUser + " retUser");
           return null;
       }
       if (retUser.password.equals(password)){
           System.out.println(retUser.password + " retUser");

           return retUser;
       }else{
           return null;
       }

    }


    static volatile HashMap <String, User> users;

    public static ArrayList<SendRequest> getFromNewRequest() {
        return getInstance().fromNewRequest;
    }

    static volatile ArrayList <SendRequest> fromNewRequest;

    public static void addRequest(SendRequest request){

        System.out.println(request.name + " " + request.login + " " + request.password);
        getInstance().fromNewRequest.add(request);
//        toDisk();

    }

    public static void addRegistoryUser(String login){
        for (SendRequest from: getInstance().fromNewRequest) {
            if(from.getLogin().equals(login)) {
                fromNewRequest.remove(from);
                users.put(from.login , (new Client(from.name, from.login, from.password)));
                System.out.println("Создан говый пользователь с " + from.getName());
                break;
            }


            }


//        toDisk();

    }
    public static void deleteRequestUser(String login){

        for (SendRequest from: getInstance().fromNewRequest) {
            if(from.getLogin().equals(login)) {
                fromNewRequest.remove(from);
                break;
            }
        }


    }

    public static boolean isClerk(User user){
       return (user instanceof Employee);

    }

    /**
     *
     * @param client
     * @param kol_vo
     */
    public static void addBabloInAccount(Client client, String kol_vo){
       try {

           client.getAccount().setBalance(client.getAccount().getBalance() +  Double.parseDouble(kol_vo));

       }catch (NumberFormatException e){
           e.printStackTrace();
       }
//        toDisk();

    }


    /**
     * перевод со счета на карту
     * @param client
     * @param summa
     */
    public static void translMoneyFronAccountToCard(Client client, String summa){
        try {
           Double creditSumma =  Double.parseDouble(summa);

          if(client.getAccount().getBalance() >= creditSumma){
             client.getAccount().setBalance(client.getAccount().getBalance() - creditSumma);
             client.getCreditCard().setBalance(client.getCreditCard().getBalance() + creditSumma);
              System.out.println(creditSumma);
              System.out.println(client.getAccount().getBalance() - creditSumma);
              System.out.println(client.getCreditCard().getBalance() + creditSumma);
          }else {
              System.out.println();
             client.getCreditCard().setBalance(client.getAccount().getBalance() + client.getCreditCard().getBalance());


             client.getAccount().setBalance(0);

          }



        }catch (NumberFormatException e){
            e.printStackTrace();
        }


    }
    public static void decreaseCreditCard(Client client, String kol_vo){
        try {
            Double creditSumma =  Double.parseDouble(kol_vo);

            if(client.getCreditCard().getBalance() >= creditSumma) {
                client.getCreditCard().setBalance(client.getCreditCard().getBalance() - Double.parseDouble(kol_vo));
            }else{

                client.getCreditCard().setBalance(0);

            }
        }catch (NumberFormatException e){
            e.printStackTrace();
        }


    }


     static Assistant loadFromFile() throws IOException, ClassNotFoundException {

        FileInputStream fileInputStream = new FileInputStream("/Users/georgijpustovalov/Desktop/papka/serializ.ser");
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

        Assistant savedGame = (Assistant) objectInputStream.readObject();

       return savedGame;
    }

}
