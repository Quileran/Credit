package main.model;

import java.io.Serializable;

public class CreditCard implements Serializable {


   volatile String name;
    volatile double balance;


    public CreditCard(String name) {
        this.name = name;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
}
