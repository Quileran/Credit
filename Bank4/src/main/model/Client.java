package main.model;

import java.io.Serializable;

public class Client extends User implements Serializable {

    volatile Account account;
    volatile CreditCard creditCard;

    public Client(){
        super();
    }

    public Client(String name, String login, String password) {
        super(name, login, password);
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public CreditCard getCreditCard() {
        return creditCard;
    }

    public void setCreditCard(CreditCard creditCard) {
        this.creditCard = creditCard;
    }





}
