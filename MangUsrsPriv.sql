GRANT privlege1, privlege2,/*(column list)*/
ON databaseName.tableName
TO 'username'@'location'
IDENTIFIED BY 'the_password';
/*Creates a user in the user table*/


/*Fills in database serverwide privledges*/

CREATE USER 'projManager'@'localhost'
IDENTIFIED BY 'password';

select user, pasword, host From user;

CREATE USER 'connectAnywhere'@'%'
IDENTIFIED BY  'someStrongPasword';




