## Project Description:
Generating Seat numbers for movie tickets involves a multi-step process that includes creating a table to store ticket information, developing a function to generate sequential seat numbers, and implementing a stored procedure to insert these seat numbers into the table.

## Goal:
To establish a streamlined process for generating sequential seat numbers by first creating a dedicated **Movie_Tickets** table, then developing a function **Get_MovieTickets** for seat number generation, and finally implementing a stored procedure **InsertData_MveTickets** to insert these numbers into the table along with the relevant ticket details.
## Insights :

### 1.Table Creation:
I have created a table called Movie_Tickets with the following columns: Sno, Seat_No, Name, Phone_No, and Mail_ID. The Seat_No column has been designated as an auto-identity column. Currently, the table remains empty as no rows have been inserted into it. However, I plan to populate it with data using a stored procedure.

#### Output:
![Screenshot 2024-05-22 181939](https://github.com/Sindhupriya717/Generate-SeatNumbers-For-MovieTickets/assets/133346654/79e26c9d-65a8-4b5f-9e0e-d2ebdbdf7b28)

### 2.Function Creation:
Later, I created a function called Get_MovieTickets with the following parameters: @Seat_No, @Name, @MaxSeatNo, @Letter, and @Number. Within the function, I have composed a query to display alphabets starting from 'A' and numbers from 1 to 6. The function includes a condition to execute the sequence from A1 to A6, then move to the next alphabet 'B' and repeat the process, generating sequences like B1 to B6, followed by C1 to C6, and so on. Execute the function to see the results.

#### Output:
![Screenshot 2024-05-23 150244](https://github.com/Sindhupriya717/Generate-SeatNumbers-For-MovieTickets/assets/133346654/c8d968d2-b01e-41c4-844c-29377e55425e)

### 3.Stored Procedure Creation:
Following the function creation, I proceeded to develop a stored procedure named InsertData_MveTickets. This procedure accepts input variables such as @Name, @Phone_No, and @Mail_Id. By combining the stored procedure and the function, I have set up a system where the Movie_Tickets table can be populated with relevant data, with Seat_No values being generated in a sequential and organized manner. Once rows are inserted using the stored procedure, querying the Movie_Tickets table will display Seat_No values ranging from A1 to A6, followed by B1 to B6, and continuing in this pattern.

#### Output:
![Screenshot 2024-05-22 182041](https://github.com/Sindhupriya717/Generate-SeatNumbers-For-MovieTickets/assets/133346654/d32183ac-e44e-4969-aebe-88e2f0b8fd38)

