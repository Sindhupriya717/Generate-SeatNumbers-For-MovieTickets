I have recently created a table called Movie_Tickets with the following columns: Sno, Seat_No, Name, Phone_No, and Mail_ID. Notably, the Sno column has been 
designated as an auto-identity column. As of now, the table remains empty. However, I plan to populate it with data using a stored procedure.what

Later, I created a function named Get_MovieTickets with parameters such as @Seat_No, @Name, @MaxSeatNo, @Letter, and @Number. Inside the function, I formulated a query 
based on the @Seat_No parameter to display alphabets starting from 'A' and numbers ranging from 1 to 6. The function includes a condition that executes from A1 to A6, then moves 
to the next alphabet 'B' and repeats the process, resulting in sequences like B1 to B6, followed by C1 to C6, and so on. Execute the function to observe the results.

Following the function's creation, I proceeded to develop a stored procedure named InsertData_MveTickets. This procedure accepts input variables such as @Name, @Phone_No, and @Mail_Id. 
Within this stored procedure, values are inserted into the Movie_Tickets table by calling the function named Get_MovieTickets. After the stored procedure is created, 
it can be executed using input variables @Name, @Phone_No, and @Mail_Id. Once rows are inserted into the stored procedure, querying the Movie_Tickets table will display Seat_No 
values ranging from A1 to A6, followed by B1 to B6, and so on.

