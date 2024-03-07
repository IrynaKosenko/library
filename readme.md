npm install

RUN this commands in your database:

create database if not exists library;

CREATE USER 'userIryna'@'%' IDENTIFIED by 'userIryna79&';
 
GRANT ALL on library.* to 'userIryna'@'%' ;
 
FLUSH PRIVILEGES;
