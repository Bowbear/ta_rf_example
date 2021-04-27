*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}resource/Computers/ComputersApp.robot
Resource    ..${/}..${/}resource/Computers/Software/SoftwareApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/Computers/Software -L TRACE rf/testdefinition/Computers/Computers.Software.robot

*** Test Cases ***

Testing of direct link "Computer" to "Software" without login
    [Documentation]    Test direct link "Computer" to "Software"
    [Tags]    TA2-7    Smoke
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Software" option via header link
    I verify if "Software" page is open

# Testing pop up link "Computer" to "Software"