*** Settings ***
Documentation    Testing of Login

Resource    ..${/}..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Registration -L TRACE rf/testdefinition/Login/Login.robot

*** Test Cases ***

Login to web site
    [Documentation]    Test to login
    [Tags]    Login
    I open the HomePage
    I click in "Login"
    Log in to the site    ${USERDATA.USER_1}
    sleep    10s