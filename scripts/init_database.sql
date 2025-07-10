/*
===============================================
CREATE DATABASE AND SCHEMAS
===============================================

Purpose:
	The script creates a new database named 'DataWarehouse' after checking if the database already exists.
	If the database exists, the current database will be deleted and recreated. Also, the script sets up three schemas
	which are the 'bronze', 'silver', and 'gold.

WARNING:
	Running this script will drop the current database if it exists. 
	All data will be permanently deleted. 
	Proceed with caution when using it.
*/

USE master;
GO

-- Drop and recreate the 'DataWareHouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWareHouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
