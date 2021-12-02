*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/job_page_common.robot

Suite Setup       Launch Apna App       
#Suite Teardown    Close the Apna App 
 

*** Test Case ***

Check if user can add selected job type to the list
    Click on Change Job Type                        
    Select a job type                        
    click on add button             

Check if user can delete the Selected Job type from the list    
    Select job type 
    click on delete  

Check if user can delete all the Selected Job type 
    Select a particular job
    Click Delete

Check the functionality of search field  
    [Tags]  Smoke
    Click on search field and apply for job

    