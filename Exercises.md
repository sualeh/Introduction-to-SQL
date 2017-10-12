# Introduction to SQL
# Exercises

Complete the download and setup steps below. Go through each exercise, and only look at the [solutions](Solutions.md) after you are done.

--------

## Setup Exercises

- Make sure that you have [Java installed on your system](https://java.com/en/download/help/download_options.xml)
- Download the database from [sualeh/Introduction-to-SQL](https://github.com/sualeh/Introduction-to-SQL), using the `Clone or Download` button
- Unzip the files into a folder on your local machine

## Start the Database Server

- Start a command shell in the directory that you downloaded or cloned from GitHub
- Run the `StartExercises.cmd` command on Windows, or `StartExercises.sh` command on Unix
- A browser tab will open up
- Click the `Connect` button to connect to the database

--------


## Exercise 1 - Queries

### 1.1
Run all of the `SELECT` statements from the slides, and make sure that you get the same results as shown.

### 1.2
Run a `SELECT` statement to find all products that are in the household category.

### 1.3
Run a `SELECT` statement to find all products that are cheaper than $200.

### 1.4
Run a `SELECT` statement to get a list of all products sold by Fred, without any duplicates, and in alphabetical order.

### 1.5

Why do we use use single quotes (') in queries? What would happen if you used double-quotes? What would happen if you used no quotes?


## Exercise 2 - Modifications

### 2.1
Run all of the `INSERT`, `UPDATE` and `DELETE` statements from the slides, and verify that you get results using `SELECT` statements.

### 2.2
Add a new product using an `INSERT` statement, verify that it got added using a `SELECT`. Then `DELETE` the product you added, and verify it got deleted (and nothing else did).



## Exercise 3 - Joins

### 3.1
Run all of the joins from the slides, and make sure that you get the same results as shown.

### 3.2
Find the buyer, product and price for all products sold by Fred. Sort by buyer.


## Exercise 4 - Unions

### 4.1
Run all of the unions from the slides, and make sure that you get the same results as shown.


## Exercise 5 - Aggregate Functions

### 5.1
Run all of the `SELECT` statements for aggregate functions from the slides, and make sure that you get the same results as shown.

### 5.2
Find the gross sale amount for each seller of products, in a column called `GROSS_SALES`. Show just the seller name and gross sale amount, but only if the gross sale amount was over $100.


## Exercise 6 - Data Definition Language (DDL)

### 6.1
Run all of the `CREATE` and `DROP` statements from the slides, and make sure that you get the same results as shown.
