package test;

import service.UserService;

public class logintest {
    public static void main(String[] args) {
        UserService userService = new UserService();
        if(userService.login("MAIL_1@mail.mail","PASSWORD_1")){
            System.out.println("OK");
        }else{
            System.out.println("WRONG");
        }
    }
}
