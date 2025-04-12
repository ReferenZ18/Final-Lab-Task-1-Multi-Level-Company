# Final Lab Task 1 - MySQL Basics 

In this task, we used MySQL to create a functional database and learned how to properly write and execute the required SQL queries. We were tasked with creating multiple tables that represent a sample company, which were later linked through relationships.

These are the guide given by our instructor:

**Task 1: Create the employees table** <br>
- Define employee_id as a unique integer, auto-increment, and primary key. 
- Define employee_name as a VARCHAR (up to 255 characters), and make it not null.
- Define manager_id as an integer, which will be a foreign key referencing employee_id from the same table.
  
**Task 2: Create the departments table** <br>
- Define department_id as a unique integer, auto-increment, and primary key.
- Define department_name as a VARCHAR (up to 255 characters), and make it not null.
  
**Task 3: Create the employee_departments table** <br>
- Define employee_id as an integer, which will be a foreign key referencing employee_id in the employees table.
- Define department_id as an integer, which will be a foreign key referencing department_id in the departments table.
- Set a composite primary key on the combination of employee_id and department_id.
  
**Task 4: Create the employee_projects table** <br>
- Define employee_id as an integer, which will be a foreign key referencing employee_id in the employees table.
- Define project_name as a VARCHAR (up to 255 characters), and make it not null.
  
**Task 5: Create the managers table** <br>
- Define manager_id as a unique integer, auto-increment, and primary key.
- Define employee_id as an integer, which will be a foreign key referencing employee_id in the employees table.

## Query Statements

- Step - 1 Employee Table Query <br>

<img src="Images/Employee-Table.png" alt="Alt Text" width="600" height="200">

- Step - 2 Department Table Query <br>

<img src="Images/Department-Table.png" alt="Alt Text" width="600" height="200">

- Step - 3 Employee Department Table Query <br>

<img src="Images/Emp-Dept-Table.png" alt="Alt Text" width="600" height="200">

- Step - 4 Project Table Query <br>

<img src="Images/Emp-Proj-Creation.png" alt="Alt Text" width="600" height="200">

- Step - 5 Managers Table Query <br>

<img src="Images/Manager-Table-Creation.png" alt="Alt Text" width="600" height="200">

## Table Structures

- Step 1 - Employee Table Structure <br>

<img src="Images/Emp-Table-Structure.png" alt="Alt Text" width="600" height="100">

- Step 2 - Department Table Structure <br>

<img src="Images/Department-Table-Structure.png" alt="Alt Text" width="600" height="100">

- Step 3 - Employee Department Table Structure <br>

<img src="Images/Employee-Department-Structure.png" alt="Alt Text" width="600" height="100">

- Step 4 - Project Table Structure <br>

<img src="Images/Project-Structure.png" alt="Alt Text" width="600" height="100">

- Step 5 - Managers Table Structure <br>

<img src="Images/Manager-Structure.png" alt="Alt Text" width="600" height="100">

## Entity-Relational Schema

- Relation Schema attached below <br>

<img src="Images/Entity-Relation.jpg" alt="Alt Text" width="900" height="400">
