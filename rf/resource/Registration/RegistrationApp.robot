*** Settings ***
Documentation    Suite description

Resource    ./PO/Registration.robot
Resource    ../Configuration.robot


*** Keywords ***
I register a new user
    [Arguments]    ${Credentials}
    Enter personal details    ${Credentials}
    Enter company details    ${Credentials}
    Select registration options    ${Credentials}
    Create new password    ${Credentials}
    Register user