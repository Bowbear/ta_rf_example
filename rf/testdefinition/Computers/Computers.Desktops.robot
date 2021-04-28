*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}resource/Computers/ComputersApp.robot
Resource    ..${/}..${/}resource/Computers/Desktops/DesktopsApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/Computers/Desktops -L TRACE rf/testdefinition/Computers/Computers.Desktops.robot

*** Test Cases ***

[Robot] Testing of direct link "Computer" to "Desktops" without login
    [Documentation]    Test direct link "Computer" to "Desktops"
    [Tags]    TA2-17    Smoke
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Desktop" option via header link
    I verify if "Desktops" page is open

# Testing pop up link "Computer" to "Desktop"