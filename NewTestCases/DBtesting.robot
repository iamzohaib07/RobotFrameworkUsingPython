*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       localhost
${DBPort}       3306

*** Test Cases ***
CREATE TABLE person
    ${output}=      Execute SQl String  Create table person(id integer,first_name varchar(20),last_name varchar(20));
    log to console      ${output}
    should be equal as strings      ${output}   none

Inserting Data in person table
#    single record
    ${output}=      Execute SQl String  insert into person values(101,"kaif","shaikh");

#    multiple record
    ${output}=      Execute SQl Script  ./TestData/mydb_person_insertData.sql
    log to console      ${output}
    should be equal as strings      ${output}   none

Check kaif record present in person table
    check if exists in database     select id from mydb.person where first_name="kaif";

Check jio record not present in person table
    check if not exists in database     select id from mydb.person where first_name="jio";

Check Person Table exists in mydb database
    Table Must Exist   person

Verify Row Count is Zero



