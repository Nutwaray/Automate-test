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
    