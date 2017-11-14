USE [fluffy-invention]  
GO  
/****** Object: StoredProcedure [dbo].[AddUser] Script Date: 10/27/2017 1:02:42 PM ******/  
SET ANSI_NULLS ON  
GO  
SET QUOTED_IDENTIFIER ON  
GO  
CREATE PROCEDURE [dbo].[AddUser]  
--DECLARE  
@FirstName varchar(100) = NULL,  
@LastName varchar(200) = NULL,  
@City varchar(50) = NULL,  
@Region varchar(50) = NULL,  
@PostalCode varchar(10) = NULL,  
@Country varchar(50) = NULL,  
@Notes text = NULL  
AS  
BEGIN  
BEGIN TRANSACTION  
BEGIN TRY  
INSERT INTO Users (FirstName, LastName, City, Region, PostalCode, Country, Notes)  
VALUES (@FirstName, @LastName, @City, @Region, @PostalCode, @Country, @Notes)  
END TRY  
BEGIN CATCH  
--SELECT ERROR_NUMBER() AS ErrorNumber  
-- ,ERROR_SEVERITY() AS ErrorSeverity  
-- ,ERROR_STATE() AS ErrorState  
-- ,ERROR_PROCEDURE() AS ErrorProcedure  
-- ,ERROR_LINE() AS ErrorLine  
-- ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH  
COMMIT TRANSACTION  
END  
GO  
/****** Object: StoredProcedure [dbo].[DeleteUser] Script Date: 10/27/2017 1:02:42 PM ******/  
SET ANSI_NULLS ON  
GO  
SET QUOTED_IDENTIFIER ON  
GO  
CREATE PROCEDURE [dbo].[DeleteUser]  
--DECLARE  
@UserID int  
AS  
BEGIN  
BEGIN TRANSACTION  
BEGIN TRY  
DELETE FROM Users WHERE UserID = @UserID  
END TRY  
BEGIN CATCH  
--SELECT ERROR_NUMBER() AS ErrorNumber  
-- ,ERROR_SEVERITY() AS ErrorSeverity  
-- ,ERROR_STATE() AS ErrorState  
-- ,ERROR_PROCEDURE() AS ErrorProcedure  
-- ,ERROR_LINE() AS ErrorLine  
-- ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH  
COMMIT TRANSACTION  
END  
GO  
/****** Object: StoredProcedure [dbo].[GetUser] Script Date: 10/27/2017 1:02:42 PM ******/  
SET ANSI_NULLS ON  
GO  
SET QUOTED_IDENTIFIER ON  
GO  
CREATE PROCEDURE [dbo].[GetUser]  
AS  
SELECT UserID,  
FirstName,  
LastName,  
City,  
Region,  
PostalCode,  
Country,  
Notes  
FROM Users  
ORDER BY UserID DESC  
GO  
/****** Object: StoredProcedure [dbo].[UpdateUser] Script Date: 10/27/2017 1:02:42 PM ******/  
SET ANSI_NULLS ON  
GO  
SET QUOTED_IDENTIFIER ON  
GO  
CREATE PROCEDURE [dbo].[UpdateUser]  
--DECLARE  
@UserID int,  
@FirstName varchar(100) = NULL,  
@LastName varchar(200) = NULL,  
@City varchar(50) = NULL,  
@Region varchar(50) = NULL,  
@PostalCode varchar(10) = NULL,  
@Country varchar(50) = NULL,  
@Notes text = NULL  
AS  
BEGIN  
BEGIN TRANSACTION  
BEGIN TRY  
UPDATE Users  
SET FirstName = @FirstName, LastName = @LastName,  
City=@City, Region=@Region, PostalCode=@PostalCode,  
Country=@Country, Notes = @Notes  
WHERE UserID = @UserID  
END TRY  
BEGIN CATCH  
--SELECT ERROR_NUMBER() AS ErrorNumber  
-- ,ERROR_SEVERITY() AS ErrorSeverity  
-- ,ERROR_STATE() AS ErrorState  
-- ,ERROR_PROCEDURE() AS ErrorProcedure  
-- ,ERROR_LINE() AS ErrorLine  
-- ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH  
COMMIT TRANSACTION  
END  
GO