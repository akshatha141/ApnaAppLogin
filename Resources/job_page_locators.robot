*** Variable ***

# Open Application Variables
${Port_Number}                 http://localhost:4723/wd/hub 
${Platform_Name}               Android  
${Device_Name}                 emulator-5554 
${App_Path}                    E:\\ApnaApp\\apna-devDebug-dev-9293.apk
#${Mobile_number}               8886786202

#select job type
${Change_Job}                 id=category_img
${job_name}                   Change job types
${Add_Job}                    xpath=//android.view.ViewGroup[@index="5"]//android.widget.TextView[@text="ADD"]
${Telecaller}                 xpath=//android.view.ViewGroup[@index="1"]//android.widget.TextView[@text="Telecaller / Bpo"]
${Telecaller_name}            Telecaller / Bpo
${Telecaller_Delete}          xpath=//android.view.ViewGroup[@index="3"]//android.widget.TextView[@text="Telecaller / Bpo"]
${Telecaller_Add}             xpath=//android.view.ViewGroup[@index="1"]//android.widget.TextView[@text="ADD"]
${Telecaller_Element}         xpath=//android.view.ViewGroup[@index="3"]
${Back}                       xpath=//android.widget.ImageButton[@index="0"] 
${remove}                     xpath=//android.view.ViewGroup[@index="1"]//android.widget.TextView[@text="REMOVE"]
${remove_account}             xpath=//android.view.ViewGroup[@index="0"]//android.widget.TextView[@text="REMOVE"]
${add_account}                xpath=//android.view.ViewGroup[@index="0"]//android.widget.TextView[@text="ADD"]
${message}                    id=tv_select_atleast_one   
${job_type}                   Your selected job types 
${DeleteAll_text}             Add at least 1 job type
${telle}                      xpath=//android.view.ViewGroup[@index="1"]

#search functionality
${search_feild}               id=etSearchJobs
${search_name}                Search by title, company ex. clerk
${search_input}               id=etSearch 
${cook}                       cook/chef 
${job_title}                  id=tvJobTitle 
${job_title_name}             Cook / Chef
${back_button}                id=iv_back
${search_default}             Try searching for
${viewed}                     id=tvStatus  
${view}                       VIEWED
${work}                       id=chip_filter_wfh
${home}                       id=iv_wfh
${All}                        id=chip_filter_all

#Location Change
${view_all}                   xpath=//android.widget.LinearLayout[@index="3"]//android.widget.TextView[@text="View All"]
${part_time}                  Part-time
${part_time_text}             There are no jobs available for the filters you have selected. Please try changing filters
${part_time_ID}               id=tvNoData
${job_back}                   id=back
${apna_jobs}                  apnaJobs
${Search_Location}            id=act_select_location_etSearchLocation
${location_change}            id=tv_location_area
${Location_Name}              Jayanag
${Location_Jayanagar}         Jayanagar
${Trending}                   id=row_job_category_tv_title
${No_jobs}                    Jobs are not available in your selected job types. Please check similar jobs.
${Night_Shift}                id=chip_filter_night_shift
${Location_Name1}             Giri Na
${Location_Giri}              Giri Nagar
 