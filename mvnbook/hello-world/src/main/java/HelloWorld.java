package com.hadoopbook.mvnbook.helloworld;

public class HelloWorld {
  public String sayHello() {
    return "Hello World";
  }

  public static void main(String[] args) {
    System.out.print(new HelloWorld().sayHello());
  }
}