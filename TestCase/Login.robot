*** Settings ***
Library    AppiumLibrary
Resource    ../Resources/common.robot



*** Test Case ***

Open the Application
    Launch Apna App

User Login through Mobile
    Enter Mobile Number 
    Enter OTP Number

User Choose Language
    Select English and click Next

User Visiting Card
    Enter User Name 
    Enter User Job City 
    Enter User Job Location
    User Select Gender
    Click on Next   

Experience Details 
    Select Work Experience  

User Education Details 
    User Enters Highest Qualification
    User Enters Degree Details
    User Enters University Details  

User Category Details  
    User Enters Job categories
    User Added Gallery and See Jobs     