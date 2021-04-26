*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
# Personal Details
${REGIST_MALE_GENDER} =         xpath=//input[@id="gender-male"]
${REGIST_FEMALE_GENDER} =       xpath=//input[@id="gender-female"]
${REGIST_FIRST_NAME} =          xpath=//input[@id="FirstName"]
${REGIST_LAST_NAME} =           xpath=//input[@id="LastName"]
${REGIST_BIRTH_DAY} =           xpath=//select[@name="DateOfBirthDay"]
${REGIST_BIRTH_MONTH} =         xpath=//select[@name="DateOfBirthMonth"]
${REGIST_BIRTH_YEAR} =          xpath=//select[@name="DateOfBirthYear"]
${REGIST_EMAIL} =               xpath=//input[@id="Email"]

# Company Details
${REGIST_COMPANY} =             xpath=//input[@id="Company"]

# Options
${REGIST_NEWSLETTER} =          xpath=//input[@id="Newsletter"]

# PASSWORD
${REGIST_PASSWORD_FIRST} =      xpath=//input[@id="Password"]
${REGIST_PASSWORD_SECOND} =     xpath=//input[@id="ConfirmPassword"]

${REGIST_BUTTON} =              xpath=//button[@id="register-button"]

*** Keywords ***
Enter personal details
    [Arguments]    ${Credentials}
    wait until element is visible    ${REGIST_MALE_GENDER}    10s
    run keyword if    '${Credentials.gender}' == 'Male'
    ...    click element    ${REGIST_MALE_GENDER}
    run keyword if    '${Credentials.gender}' == 'Female'
    ...    click element    ${REGIST_FEMALE_GENDER}
    input text    ${REGIST_FIRST_NAME}    ${Credentials.firstname}
    input text    ${REGIST_LAST_NAME}    ${Credentials.lastname}
    select from list by value    ${REGIST_BIRTH_DAY}    ${Credentials.birth_day}
    select from list by value    ${REGIST_BIRTH_MONTH}    ${Credentials.birth_month}
    select from list by value    ${REGIST_BIRTH_YEAR}    ${Credentials.birth_year}
    input text    ${REGIST_EMAIL}    ${Credentials.email}

Enter company details
    [Arguments]    ${Credentials}
    page should contain textfield    ${REGIST_COMPANY}
    input text    ${REGIST_COMPANY}    ${Credentials.company}

Select registration options
    [Arguments]    ${Credentials}
    page should contain checkbox    ${REGIST_NEWSLETTER}
    run keyword if    '${Credentials.newsletter}' == 'false'
    ...    unselect checkbox    ${REGIST_NEWSLETTER}

Create new password
    [Arguments]    ${Credentials}
    input password    ${REGIST_PASSWORD_FIRST}    ${Credentials.password}
    input password    ${REGIST_PASSWORD_SECOND}    ${Credentials.password}

Register user
    click button    ${REGIST_BUTTON}