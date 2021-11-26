*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/common.robot

Suite Setup       Launch Apna App
Suite Teardown    Close the Apna App 

*** Test Case ***

User Login through Mobile
    [Documentation]    Allows User to Login in Through Valid Mobile Number
    Enter Mobile Number 
    Enter OTP Number

User Choose Language
    [Documentation]    Allows User to Select from list of languages
    Select English and click Next

User Visiting Card
    [Documentation]    Allows User to enter Personal Details
    Enter User Name 
    Enter User Job City 
    Enter User Job Location
    User Select Gender
    Click on Next   

Experience Details 
    [Documentation]    Allows User to select work experience
    Select Work Experience  

User Education Details 
    [Documentation]    User to enter Educational Details 
    User Enters Highest Qualification
    User Enters Degree Details
    User Enters University Details  

User Category Details  
    [Documentation]    User to specify type of job  
    User Enters Job categories
    User Added Gallery and See Jobs  

     