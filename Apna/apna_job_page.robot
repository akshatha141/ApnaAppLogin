*** Keywords ***
Launch Apna App
    Open Application       ${Port_Number}     platformName=${Platform_Name}      deviceName=${Device_Name}      app=${App_Path}   noReset=true     

Click on Change Job Type  
    Wait for Element on Screen and click Element     ${Change_Job}  

Select a job type          
    Wait for text on Screen                          ${job_name} 

click on add button          
    Click Element                                    ${Add_Job} 
    Element Should Contain Text                      ${Telecaller}         ${Telecaller_name}  
    Click Element                                    ${Back} 
    Wait for text on Screen                          ${job_type}  
    Element Should Contain Text                      ${Telecaller_Delete}  ${Telecaller_name}   

Select job type 
    Wait for text on Screen                          ${job_type}  
    Wait for Element on Screen and click Element     ${Change_Job}  
    Wait for text on Screen                          ${job_name} 

click on delete  
    Element Should Contain Text                      ${Telecaller}       ${Telecaller_name}          
    Click Element                                    ${remove} 
    Wait Until Page Contains Element                 ${Telecaller_Add}   timeout=20s         
    Page Should Contain Element                      ${Telecaller_Add}
    Click Element                                    ${Back} 
    Wait for text on Screen                          ${job_type} 
    Page Should Not Contain Element                  ${Telecaller_Element}
        
Select a particular job
    Wait for text on Screen                          ${job_type} 
    Wait for Element on Screen and click Element     ${Change_Job}  
    Wait for text on Screen                          ${job_name} 

Click Delete         
    Click Element                                    ${remove_account}
    Wait Until Page Contains Element                 ${message}          timeout=20s
    ${text}=  Get Text  ${message} 
    Log To Console                                   ${text}
    Element Should Contain Text                      ${message}          ${DeleteAll_text}   
    Click Element                                    ${add_account} 
    Click Element                                    ${Back} 

Click on search field and apply for job
    Wait for text on Screen                          ${job_type}
    Click Element                                    ${search_feild} 
    Wait for text on Screen                          ${search_name} 
    Input Text                                       ${search_input}      ${cook} 
    Wait for text on Screen and click Text           ${search_default}  
    Wait Until Page Contains Element                 ${job_title}         timeout=20s
    Element Should Contain Text                      ${job_title}         ${job_title_name}  
    Element Should Contain Text                      ${viewed}            ${view}
    Click Element                                    ${back_button} 
    Wait for text on Screen                          ${search_default} 
    Click Element                                    ${back_button} 

Click on work from home    
    Wait for text on Screen                          ${job_type}
    Click Element                                    ${work} 

verify work from home jobs are displayed       
    Wait for text on Screen                          ${job_type}
    Swipe by Percent                                 50  35  50  5 
    Wait Until Page Contains Element                 ${home}              timeout=20s
    Page Should Contain Element                      ${home} 
    Click Element                                    ${All} 

Click on view all jobs
    Wait for text on Screen                          ${apna_jobs}
    Swipe by Percent                                 50  45  50  5 
    Click Element                                    ${view_all}

select part time jobs    
    Wait for text on Screen and click Text           ${part_time} 
    Wait for text on Screen                          ${part_time_text}  
    Element Should Contain Text                      ${part_time_ID}       ${part_time_text}    
    Click Element                                    ${job_back} 

Click on Change location
    Wait for text on Screen                          ${job_type}
    Click Element                                    ${location_change} 
    Wait Until Page Contains Element                 ${Search_Location}     timeout=20s   
    Input Text                                       ${Search_Location}     ${Location_Name}
    Wait for text on Screen and click Text           ${Location_Jayanagar} 

Search jobs    
    Wait for text on Screen                          ${job_type}
    Click Text                                       ${part_time}  
    Wait Until Page Contains Element                 ${Trending}             timeout=20s  
    Page Should Contain Text                         ${No_jobs}  
    Click Element                                    ${Night_Shift}  
    Wait Until Page Contains Element                 ${Trending}             timeout=20s  
    Page Should Contain Text                         ${No_jobs}  
    Click Element                                    ${location_change} 
    Wait Until Page Contains Element                 ${Search_Location}      timeout=20s   
    Input Text                                       ${Search_Location}      ${Location_Name1}  
    Wait for text on Screen and click Text           ${Location_Giri}                  
    Wait for text on Screen                          ${job_type}   
    Click Element                                    ${All}  


#Close the Apna App  
    #Close Application        
