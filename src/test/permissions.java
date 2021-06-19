package test;

import service.UserService;

public class permissions {
    public static void main(String[] args) {
        UserService userService = new UserService();
        System.out.println(userService.checkAdmin(1));
        System.out.println(userService.checkAdmin(2));
    }
}
