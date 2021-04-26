*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${EMAIL_INPUT} =     xpath=//input[@id="Email"]
${PASSWORD_INPUT} =  xpath=//input[@id="Password"]
${LOG_IN_BTN} =      xpath=//button[text()="Log in"]

*** Keywords ***
Enter credentials
    [Arguments]    ${credentials}
    Enter email    ${credentials.email}
    Enter password    ${credentials.password}

Enter email
    [Arguments]    ${email}
    run keyword unless    '${email}' == '${EMPTY}'    input text    ${EMAIL_INPUT}    ${email}

Enter password
    [Arguments]    ${password}
    run keyword unless    '${password}' == '${EMPTY}'    input password    ${PASSWORD_INPUT}    ${password}

Click on "Log in Button"
    sleep    1s
    click button    ${LOG_IN_BTN}