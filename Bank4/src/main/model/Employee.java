package main.model;

import java.io.Serializable;

public class Employee extends User implements Serializable {

    public Employee(){
        super();
    }

    public Employee(String name, String login, String password) {
        super(name, login, password);
    }
}
