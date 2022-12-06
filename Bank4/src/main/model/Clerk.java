package main.model;

import java.io.Serializable;

public class Clerk extends User implements Serializable {

    public Clerk(){
        super();
    }

    public Clerk(String name, String login, String password) {
        super(name, login, password);
    }
}
