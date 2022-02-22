*** Settings ***
Library  Selenium2Library
Library  LambdaTestStatus.py

*** Variables ***





&{errorColor}=    red=255  green=0    blue=200

&{output}=    errorColor=${errorColor}    errorType=movement    largeImageThreshold=1200    outputDiff=true    transparency=0.1    useCrossOrigin=false

&{options}=    ignore=antialiasing    scaleToSameSize=true    output=${output}    
          







&{CAPABILITIES}=    browserName=Chrome    smartUI.project=Finnair    smartUI.options=${options}    platform=win10    visual=true        

    
    
    
    
    
    
    
    



${BROWSER}          ${ROBOT_BROWSER}


${REMOTE_URL}       https://USERNAME:ACCESSKEY@beta-smartui-hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***


Open test browser
    [Timeout]   ${TIMEOUT}
    Open browser  https://www.lambdatest.com/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}  

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Lambdatest Status
    ...  ${TEST_NAME} 
    ...  ${TEST_STATUS} 
    Close all browsers

