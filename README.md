# Bank: A Tech Test

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

* As a customer,
so that I can bank,
I want to be able to open an account.

* As a customer,
so that I can put money in my account,
I want to be able to make a deposit.

* As a customer,
so that I can take money out  of my account,
I want to be able to make a withdrawal.

* As a customer,
so that I know when my transactions occurred,
I want to a date attached to all of my transactions.

* As a customer,
so that I can see what transactions have taken place,
I want to be able to print a bank statement.

## Example of Use
![Alt text](Screen_Shot.png?raw=true)

## Tech Stack

* Ruby
* Rspec
* Rubocop
* Simplecov
