REM =======================================================
REM cleanup section
REM =======================================================

DROP USER c##insa CASCADE;

REM =======================================================
REM create user
REM three separate commands, so the create user command 
REM will succeed regardless of the existence of the 
REM USERS and TEMP tablespaces 
REM =======================================================

CREATE USER c##insa IDENTIFIED BY oracle;

ALTER USER c##insa DEFAULT TABLESPACE users
              QUOTA UNLIMITED ON users;

ALTER USER c##insa TEMPORARY TABLESPACE temp;

GRANT CREATE SESSION, CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO c##insa;
GRANT CREATE SYNONYM, CREATE DATABASE LINK, RESOURCE , UNLIMITED TABLESPACE TO c##insa;