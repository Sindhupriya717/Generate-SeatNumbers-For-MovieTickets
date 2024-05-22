I have recently created a table called Movie_Tickets with the following columns: Sno, Seat_No, Name, Phone_No, and Mail_ID. The Seat_No column has been designated as an auto-identity column. 
Currently, the table remains empty as no rows have been inserted into it. However, I plan to populate it with data using a stored procedure.

![Screenshot 2024-05-22 181939](https://github.com/Sindhupriya717/Generate-SeatNumbers-For-MovieTickets/assets/133346654/26fa4e5d-8fd0-43af-8486-ac90ab689534)


Later, I created a function called Get_MovieTickets with the following parameters: @Seat_No, @Name, @MaxSeatNo, @Letter, and @Number. Within the function, I have composed a query to display alphabets starting from 'A' and numbers from 1 to 6. The function includes a condition to execute the sequence from A1 to A6, then move to the next alphabet 'B' and repeat the process, generating sequences like B1 to B6, followed by C1 to C6, and so on. Execute the function to see the results.


Following the function's creation, I proceeded to develop a stored procedure named InsertData_MveTickets. This procedure accepts input variables such as @Name, @Phone_No, and @Mail_Id.
By combining the stored procedure and the function, I have set up a system where the Movie_Tickets table can be populated with relevant data, with Seat_No values being generated in a sequential and organized manner. Once rows are inserted using the stored procedure, querying the Movie_Tickets table will display Seat_No values ranging from A1 to A6, followed by B1 to B6, and continuing in this pattern.

![Screenshot 2024-05-22 182041](https://github.com/Sindhupriya717/Generate-SeatNumbers-For-MovieTickets/assets/133346654/d8ee6372-abb1-42cd-99db-9ddafcdafd76)
