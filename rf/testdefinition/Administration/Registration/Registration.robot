*** Settings ***
Documentation    Testing of registration

Resource    ..${/}..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}..${/}resource/Registration/RegistrationApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_REGIST_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Registration -L TRACE rf/testdefinition/Registration/Registration.robot

*** Test Cases ***

Register an account
    [Documentation]    Test to register a new account
    [Tags]    Register
    I open the HomePage
    I click on "Register"
    I register a new user    ${USERDATA.USER_1}
    sleep    10s