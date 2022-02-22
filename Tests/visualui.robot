*** Settings ***

Resource  ../Resources/Common.robot


Test Setup  Common.Open test browser
Test Teardown  Common.Close test browser
 


*** Test Case ***
Visual UI Regression
    

    Go To		https://www.lambdatest.com/

    #click product on package catalogue
    Sleep                            2
    
    Execute Javascript               smartui.takeScreenshot
    Log                              Screen Shot has been taken Successfully
    Sleep                            3

    