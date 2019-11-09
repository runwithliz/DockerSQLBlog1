 IF(DB_ID(N'dockersql') IS NULL)
 CREATE DATABASE dockersql

 GO

 USE dockersql
 GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Places'
 and xtype='U')
BEGIN
 CREATE TABLE dbo.Places (
     Id INT IDENTITY(1,1) NOT NULL,
     Name varchar(25) NOT NULL
 );

INSERT INTO dbo.Places (Name)
VALUES
('Dallas'),('Austin'),('Houston')
END
