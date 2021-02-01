*** Settings ***

Library  Selenium2Library

*** Variables ***

*** Keywords ***
Login 
    [Arguments]    ${email}    ${password}
    Input Text    email    ${email}
    Input Password    pass    ${password}
    Click Button    login
    Wait Until Page Contains    mount_0_0

*** Test Cases ***
TC_01 Login with a valid email address and password
    Open Browser    https://www.facebook.com/  chrome
    Login     Testsystem618@gmail.com     Test1234.9
    Set Selenium Speed  0.1
    [Teardown]    Close Browser

TC_02 Login with a invalid email address 
    Open Browser    https://www.facebook.com/  chrome
    Login     Test@example.com     Test1234.9  
    Set Selenium Speed  0.1  
    [Teardown]    Close Browser

TC_03 Login with a invalid password
    Open Browser    https://www.facebook.com/  chrome
    Login     Testsystem618@gmail.com     00000g1234.9 
    Set Selenium Speed  0.1  
    [Teardown]    Close Browser

TC_04 Login with invalid email and password
    Open Browser    https://www.facebook.com/  chrome
    Login     Test@example.com     00000g1234.9 
    Set Selenium Speed  0.1  
    [Teardown]    Close Browser

TC_05 Log in with a phone number, but not registered with a phone number.
    Open Browser    https://www.facebook.com/  chrome
    Login     0923913156     Test1234.9 
    Set Selenium Speed  0.1  
    [Teardown]    Close Browser
