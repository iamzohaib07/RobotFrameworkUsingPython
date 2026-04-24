*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup     Connect To Database    pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBName}       mydb
${DBUser}       root
${DBPass}       root
${DBHost}       127.0.0.1
${DBPort}       3306

*** Test Cases ***
#Create person table
#    ${output}=    Execute SQL String  Create table person(id integer,first_name varchar(20),last_name varchar(20));
#    log to console  ${output}
#    should be equal as strings  ${output}   None
#
#Inserting data into person table
#    Single Record
#    ${output}=    Execute SQL String  insert into person values(1,"Mohammad","Zohaib");
#    log to console  ${output}
#    should be equal as strings  ${output}   None
#
#    Multiple Record
#    ${output}=    Execute SQL Script  ./Resources/mydb_person_insertData.sql
#    log to console  ${output}
#    should be equal as strings  ${output}   None
#
#Check Kaif record in Person Table
#    check if exists in database     select id from mydb.person where last_name="Kaif";
#
#Check Zohaib record not present in person table
#    check if not exists in database     select id from mydb.person where last_name="Zohaib";
#
#Check Person Table exist in mydb database
#    table must exist    person
#
#Verify row count is zero
#    row count is 0      select * from mydb.person where first_name="XYZ";
#
#Verify row count is equal to some value
#    row count is equal to x     select * from mydb.person where last_name="Kaif";   1
#
#Verify row count is greater than some value
#    row count is greater than x     select * from mydb.person where last_name="Kaif";   0
#
#Verify row count is less than some value
#    row count is less than x     select * from mydb.person where last_name="Kaif";   3
#
#Update record in person table
#    ${output}=    Execute SQL String  update mydb.person set last_name="Zohaib" where id=1;
#    log to console  ${output}
#    should be equal as strings  ${output}   None
#
#Retrive records from person table
#    @{queryresult}=   query   Select * from mydb.person;
#    log to console  many @{queryresult}
#
#Delete record from person table
#    ${output}=   Execute SQL String      delete from mydb.person;
#    should be equal as strings  ${output}   None
