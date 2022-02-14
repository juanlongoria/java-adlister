package com.codeup.adlister.util;

import org.mindrot.jbcrypt.BCrypt;

public class Password {
    private static final int ROUNDS = 12;

    public static String hash(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt(ROUNDS));
    }

    public static boolean check(String password, String hash) {return BCrypt.checkpw(password, hash); }

    public static void main(String[] args) {
        String dog = "password";
        String hash1 = hash(dog);
        String hash2 = hash(dog);
        System.out.println(hash1);
        System.out.println(hash2);
        System.out.println(check(dog, hash1));
        System.out.println(check(dog, hash2));
    }
}
