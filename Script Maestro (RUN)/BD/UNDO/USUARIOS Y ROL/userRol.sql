-- Define User for the Project
CREATE USER Admin_DB_Biblioteca_Oracle IDENTIFIED BY "oracle" 
    DEFAULT TABLESPACE users 
    TEMPORARY TABLESPACE temp 
    QUOTA UNLIMITED ON users;

-- Define Roles for Project Team Members
-- Each team member has an assigned role with specific privileges.

-- Role: Admin1
-- Responsible: Jostin Cruz
-- Permissions: Full Access
CREATE ROLE Admin1;
GRANT 
    CREATE SESSION, 
    CREATE ANY TABLE, 
    CREATE ANY VIEW, 
    CREATE ANY PROCEDURE,
      ALTER ANY TABLE, 
      ALTER ANY PROCEDURE, 
      DROP ANY TABLE, 
      DROP ANY VIEW, 
      DROP ANY PROCEDURE
      TO Admin1;

-- Role: Admin2
-- Responsible: Lizzy Mejia
-- Permissions: Full Access
CREATE ROLE Admin2;
GRANT     
    CREATE SESSION, 
    CREATE ANY TABLE, 
    CREATE ANY VIEW, 
    CREATE ANY PROCEDURE,
      ALTER ANY TABLE, 
      ALTER ANY PROCEDURE, 
      DROP ANY TABLE, 
      DROP ANY VIEW, 
      DROP ANY PROCEDURE
      TO Admin2;

-- Role: Cliente
-- Responsible: External Users
-- Permissions: Restricted to Data Viewing Only
CREATE ROLE Cliente;
GRANT 
    CREATE SESSION, 
    SELECT ON ALL TABLES, 
    SELECT ON ALL VIEWS
      TO Cliente;
