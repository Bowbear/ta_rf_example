*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}ComputersApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}Software${/}SoftwareApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Computers/Software"
# $TAG_NAM="Software"
# $DEF_DIR="testdefinition/WebUI/Computers/Computers.Software.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Software" page without login
    [Documentation]    Test direct link "Computer" to "Software"
    [Tags]    NOPC-32    Smoke    Computers    Software
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Software" option via header link
    I verify if "Software" page is open

# Testing pop up link "Computer" to "Software"