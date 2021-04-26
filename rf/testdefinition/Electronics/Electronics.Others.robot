*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}resource/Electronics/ElectronicsApp.robot
Resource    ..${/}..${/}resource/Electronics/Others/OthersApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Electronics/Others -L TRACE rf/testdefinition/Electronics/Electronics.Others.robot

*** Test Cases ***

Testing of direct link "Electronics" to "Camera and photo" without login
    [Documentation]    Test direct link "Electronics" to "Camera and photo"
    [Tags]    Smoke    TA2-11
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Others" option via header link
    I verify if "Others" page is open

# Testing pop up link "Computer" to "Desktop"