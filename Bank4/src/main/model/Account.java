package main.model;

import java.io.Serializable;

public class Account implements Serializable {

    volatile String name;
    volatile double balance;

    public Account(String name) {
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
