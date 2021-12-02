*** Keywords ***
Launch Apna App
    Open Application       ${Port_Number}     platformName=${Platform_Name}      deviceName=${Device_Name}      app=${App_Path}   noReset=true     

Click on Change Job Type  
    Wait for Element on Screen and click Element     ${Change_Job}  

Select a job type          
    Wait for text on Screen                          ${job_name} 

click on add button          
    Click Element                                    ${Add_Job} 
    Element Should Contain Text                      ${Telecaller}         ${Telecaller_name}   timeout=20s 
    Click Element                                    ${Back} 
    Wait for text on Screen                          ${job_type}  
    Element Should Contain Text                      ${Telecaller_Delete}  ${Telecaller_name}   timeout=20s 

Select job type 
    Wait for text on Screen                          ${job_type}  
    Wait for Element on Screen and click Element     ${Change_Job}  
    Wait for text on Screen                          ${job_name} 

click on delete  
    Element Should Contain Text                      ${Telecaller}       ${Telecaller_name}     timeout=20s      
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
    Wait Until Page Contains Element                 ${message}        timeout=20s
    ${text}=  Get Text  ${message} 
    Log To Console                                   ${text}
    Element Should Contain Text                      ${message}         ${DeleteAll_text}   timeout=20s
    Click Element                                    ${add_account} 
    Click Element                                    ${Back} 

Click on search field and apply for job
    Wait for text on Screen                          ${job_type}
    Click Element                                    ${search_feild} 
    Wait for text on Screen                          ${search_name} 
    Input Text                                       ${search_input}     ${cook} 
    Wait for text on Screen and click Text           ${search_default}  
    Wait Until Page Contains Element                 ${job_title}        timeout=20s
    Element Should Contain Text                      ${job_title}        ${job_title_name}   timeout=20s
    Element Should Contain Text                      ${viewed}           ${view}
    Click Element                                    ${back_button} 
    Wait for text on Screen                          ${search_default} 
    Click Element                                    ${back_button} 

#Close the Apna App  
    #Close Application        
