
Feature: Application should be able to print greeting message Hello BDD!
  <Some interesting description here>

  Scenario: Should be able to greet with Hello BDD! message
     Given an instance of Hello class is created
      When the sayHello method is invoked
      When 5 is pushed
      Then it should return "Hello BDD!