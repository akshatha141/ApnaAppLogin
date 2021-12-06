*** Settings ***
Library           AppiumLibrary
Resource          ../Resources/job_page_common.robot

Suite Setup       Launch Apna App       
#Suite Teardown    Close the Apna App 
 

*** Test Case ***

Check if user can add selected job type to the list
    [Tags]  Jobchange
    Click on Change Job Type                        
    Select a job type                        
    click on add button             

Check if user can delete the Selected Job type from the list  
    [Tags]  Jobchange  
    Select job type 
    click on delete  

Check if user can delete all the Selected Job type 
    [Tags]  Jobchange
    Select a particular job
    Click Delete

Check the functionality of search field 
    [Tags]  Search 
    Click on search field and apply for job

Change the Job type to work from home and apply for job
    [Tags]  Search 
    Click on work from home
    verify work from home jobs are displayed    

Check if user can view all the available jobs by clicking view all 
    [Tags]  Search 
    Click on view all jobs
    select part time jobs

Check if jobs are available by changing the location
    [Tags]  Smoke
    Click on Change location
    Search jobs

