

Create table Movie_Tickets  ------Creating table
(Sno int identity(1,1) primary key,
Seat_No char(3),
Name varchar(20),
Phnone_No varchar(20),
Mail_ID varchar(50))


Select * From Movie_Tickets




Create function Get_MovieTickets() -------Creating function 
returns char(10)
as
BEGIN 
    declare @Seat_No NCHAR(3)
	declare @name varchar(20)
   declare @MaxSeatno char(6)
   declare @Letter char(1)
   declare @Number int;

;WITH CTE AS 
(SELECT Alphas+vals AS SEAT_NO
      ,Alphas 
      ,vals  
FROM (
    select CHAR(number) Alphas
    from master..spt_values
    WHERE number >= 65 and number <= 90
    GROUP BY number) A
              CROSS APPLY (VALUES ('1'),('2'),('3'),('4')
                                 ,('5'),('6'))C(vals)
)
SELECT TOP 1 @Seat_No = SEAT_NO
FROM CTE C
WHERE NOT EXISTS (SELECT 1 
                  FROM Movie_Tickets
                  WHERE C.SEAT_NO = Seat_No)
ORDER BY  Alphas ASC , CAST(vals AS INT) ASC

   RETURN @Seat_No; 
END 
GO  



Create Proc InsertData_MveTickets ---------Creating StoredProcedure
(  @Name varchar(50),
   @Phone_No varchar(20),
   @Mali_ID varchar(50)
   )
as
  begin
insert into [dbo].[Movie_Tickets] values( dbo.Get_MovieTickets() ,@Name, @Phone_No, @Mali_ID)
  end


exec  [dbo].InsertData_MveTickets  'Archana','9945638240','Archana@gmail.com'

Select * from [dbo].[Movie_Tickets]










