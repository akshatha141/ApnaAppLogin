*** Settings ***
Resource    ../Resources/commonvariables.robot
Resource    ../Apna/apna_user_login.robot


*** Keywords ***
    
Wait for Element on Screen and click Element 
    [Arguments]   ${element} 
    Wait Until Page Contains Element    ${element}   timeout=20s 
    Click Element                       ${element}   

Wait for text on Screen and click Text 
    [Arguments]   ${text}
    Wait Until Page Contains            ${text}       timeout=20s  
    Click Text                          ${text}         

Wait for text on Screen 
    [Arguments]   ${text}
    Wait Until Page Contains            ${text}       timeout=20s  
    
Wait for Element to be Visible 
    [Arguments]   ${element}
    Wait Until Element Is Visible       ${element}    timeout=20s     

Wait for Element to be Enabled 
    [Arguments]   ${element}
    Element Should Be Enabled           ${element}     timeout=20s     

Input Text and Enter OTP
    [Arguments]    ${number}   ${OTP}  ${number1}  ${OTP1}  ${number2}  ${OTP2}   ${number3}   ${OTP3}  
    Input Text     ${number}   ${OTP}   
    Input Text     ${number1}  ${OTP1}    
    Input Text     ${number2}  ${OTP2}    
    Input Text     ${number3}  ${OTP3}  