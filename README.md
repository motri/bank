## BANK

This is a tech test for Makers Academy's tech test week. It's aim is to hone our OOP and TDD skills.
 In it I will write script that allows users to keep track of deposits, withdrawals and balance.

### Setup

```
Clone this repo.
Run bundle install in your command line.
Run rspec in your command line to check tests.
```
### Technology
This script was written in Ruby and tested with RSpec.

### Interaction
In order to interact with the script start irb in your command line (or use your favorite repl) and begin by typing :
" require 'Time' ", since this script uses the Time class.
Then continue by adding the different classes in the lib folder.
I decided to create a "controller" class named Account which initializes an instance of the other classes. Therefore by
creating an instance of Account you effectively create an instance of the other classes and have access to the rest of classes and their methods.

### Tech test requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
