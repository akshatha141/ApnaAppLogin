*** Keywords ***

Launch Apna App
    Open Application    ${Port_Number}     platformName=${Platform_Name}      deviceName=${Device_Name}      app=${App_Path}   #noReset=true       
    

Enter Mobile Number 
    Wait for text on Screen and click Text                  ${Select_None}    
     

    Wait for text on Screen                                 ${Mobile_Text} 
    
    Input Value                                             ${Mobile_Field}         ${Mobile_number} 

    Click Element                                           ${Go_Button}   

Enter OTP Number 
 
    Wait for text on Screen                                 ${OTP_Text}  
    

    Input Text and Enter OTP                                ${OTP_Field1}      3        ${OTP_Field_2}      5       ${OTP_Field__3}      6        ${OTP_Field___4}     3

Select English and click Next

    

    Wait for text on Screen and click Text                   ${English}
    

    Wait for Element to be Enabled                           ${Next_Button}      

    Wait for Element to be Visible                           ${Next_Button} 

    Click Text                                               ${Next}   
    log source  

    Wait for text on Screen and click Text                   ${Lets_go} 


Enter User Name 

    Wait for text on Screen                                   ${Next}
    
    Input Text                                                ${Name_Feild}               ${Name} 
    
    Hide Keyboard

Enter User Job City 

    Click Element                                             ${Job_City}  
            
    Wait for text on Screen                                   ${Select_Job_City} 
        
    Input Text                                                ${Search_Job_City}          ${Input_City}   

    Wait for text on Screen and click Text                    ${City_Name} 
    
   
    Wait for text on Screen and click Text                    ${apna} 
    
    Wait for text on Screen                                   ${Next}


Enter User Job Location

    Click Element                                             ${Job_Location} 

    Wait for text on Screen                                   ${Set_Location}
        
    Input Text                                                ${Search_Location}           ${Location_Name} 

    Wait for text on Screen and click Text                    ${Full_Location} 
    
   
    Wait for text on Screen and click Text                    ${apna} 
     
User Select Gender    

    Click Element                                             ${Select_Female} 

Click on Next 

    Wait for Element to be Enabled                            ${Next_Button1}    

    Is Keyboard Shown


    Wait for Element to be Visible                            ${Next_Button1} 
    Click Text                                                ${Next}

Select Work Experience
     
    Wait for text on Screen                                   ${Work}  
    
    Click Element                                             ${No_Work_Experience} 

    # Wrote Code for Experience Option  and Sliding Bar Code 

    #Click Text                                             ${Yes} 
    # Click element                                         ${Experience_Years}  
    # Click Element At Coordinates                          495    687

    # User Enter Job Title

    # Input text                                            ${Job_Title}           ${Intern} 
    # Wait for text on Screen and click Text                ${Intern} 
     
    # User Enters Company Name

    # Input text                                            ${Company_Name}        ${Moolya} 
    # Wait for text on Screen and click Text                ${Moolya} 
    
    # Swipe By Percent                                      50   40  50  10
    
    
    # Wait for text on Screen                               ${Text} 

    # Progress Bar for Current Salary
    
    # ${Element_Location}=  Get Element Location    ${Seek_Bar} 
    # Log To Console   ${Element_Location}

    # ${Element_Size}=  Get Element Size            ${Seek_Bar} 
    # Log To Console   ${Element_Size}

    # ${start_x}       Evaluate      ${element_location['x']} + (${element_size['width']} *0.1)    #Get start point of seekbar.
    # ${start_y}       Evaluate      ${element_location['y']} + (${element_size['height']} * 0.1)  #Get vertical location of seekbar.
    # ${end_x}         Evaluate      ${element_location['x']} + (${element_size['width']} * 0.4)   #Get end point of seekbar.
   
    # Log To Console        ${start_x}
    # Log To Console        ${start_y}
    # Log To Console        ${end_x}
   
    # Swipe            ${start_x}     ${start_y}    ${end_x}        ${start_y} 
   
    Click Text                                                ${Next}

User Enters Highest Qualification  

    Wait for text on Screen                                   ${Education} 
    log source
    Click Element                                             ${Education_Details} 
    # Click Text     Provide the current or the highest qualification
   
    Click Element At Coordinates                              179     1796    
    
User Enters Degree Details

    
    Input Text                                                ${Education_Degree}          ${Degree} 
    Wait for text on Screen and click Text                    ${trial} 
       

User Enters University Details

    
    Input Text                                                ${University_Field}        ${University_Name}  
    
    Wait for text on Screen and click Text                    ${University_Name} 
   
    Wait for text on Screen and click Text                    ${Next}
    

User Enters Job categories 
    
    Wait for text on Screen                                   ${Job_Catagory} 
    
    Click Element                                             ${Accounts}   
  
    Click Element                                             ${Done}  
User Added Gallery and See Jobs  

    Wait for text on Screen and click Text                    ${Skip}     
     
    Wait for text on Screen and click Text                    ${See_Jobs}     
    