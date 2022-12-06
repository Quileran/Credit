package main.model;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;

public class Helper implements Serializable {
    static volatile Helper _this;

    /**
     * Singleton
     * @return
     */
    public static Helper getInstance (){
        if (_this == null) {

            System.out.println("----------------- "+_this);
//
//            try {
//                _this=loadFromFile();
//            } catch (IOException e) {
//                _this= new Helper();
//                Clerk c = new Clerk("AdminKey","admin","admin");
//                _this.users.put(c.getLogin(),c);
//                e.printStackTrace();
//            } catch (ClassNotFoundException e) {
//                _this= new Helper();
//                Clerk c = new Clerk("log","rr","rr");
//                _this.users.put(c.getLogin(),c);
//                e.printStackTrace();
//            }
////
////
            _this = new Helper();
            Clerk c = new Clerk("AdminKey","admin","admin");

            Client s = new Client("Gosha","a","a");

            _this.users.put(c.getLogin(),c);

            _this.users.put(s.getLogin(),s);


        }

        return _this;
    }
    Helper(){
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


    /**
     * Функция нужна для добавления запросов в массив
    */
    public static void addRequest(SendRequest request){

        System.out.println(request.name + " " + request.login + " " + request.password);
        getInstance().fromNewRequest.add(request);
//        toDisk();

    }

    /**
     * Добавляем в массив с пользователями (принимаем заявку)
     */
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
    /**
     * Отклоняем заявка/удаляем запрос
     */
    public static void deleteRequestUser(String login){

        for (SendRequest from: getInstance().fromNewRequest) {
            if(from.getLogin().equals(login)) {
                fromNewRequest.remove(from);
                break;
            }
        }
//        toDisk();

    }

    public static boolean isClerk(User user){
       return (user instanceof Clerk);

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
//        toDisk();

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
//        toDisk();

    }

//    static void toDisk(){
//        FileOutputStream outputStream = null;
//        try {
//            outputStream = new FileOutputStream("/Users/georgijpustovalov/Desktop/papka/serializ.ser");
//        } catch (FileNotFoundException e) {
//            e.printStackTrace();
//        }
//
//        try {
//            ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
//            objectOutputStream.writeObject(_this);
//            objectOutputStream.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }

     static Helper loadFromFile() throws IOException, ClassNotFoundException {

        FileInputStream fileInputStream = new FileInputStream("/Users/georgijpustovalov/Desktop/papka/serializ.ser");
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);

        Helper savedGame = (Helper) objectInputStream.readObject();

       return savedGame;
    }

}
