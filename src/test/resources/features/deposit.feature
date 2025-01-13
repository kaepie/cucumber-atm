Feature: Deposit money
    As a customer
    I want to deposit money to my account using ATM

Background:
    Given a customer with id 1 and pin 111 with balance 1000.00 exists
    When I login to ATM with id 1 and pin 111

Scenario: Deposit money successfully
    When I deposit 500.00 to my account
    Then my account balance is 1500.00

Scenario: Deposit negative amount
    When I deposit -100.00 to my account
    Then I cannot deposit