*** Settings ***
Documentation

Resource    ./PO/Login.robot

*** Keywords ***
Log in to the site
    [Arguments]    ${Credentials}
    Login.Enter credentials    ${Credentials}
    Click on "Log in Button"