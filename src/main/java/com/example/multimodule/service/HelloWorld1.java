package com.example.multimodule.service;

public class HelloWorld1 {

    public static void main(String[] args) {
        System.out.println("Hello, world!");
        try {
            Thread.sleep(120000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}