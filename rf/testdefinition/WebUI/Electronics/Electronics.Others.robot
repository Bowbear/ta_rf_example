*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}ElectronicsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}Others${/}OthersApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Electronics/Others"
# $TAG_NAM="Others"
# $DEF_DIR="testdefinition/WebUI/Electronics/Electronics.Others.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Others" page without login
    [Documentation]    Test direct link "Electronics" to "Others"
    [Tags]    NOPC-45    Smoke    Electronics    Others
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Others" option via header link
    I verify if "Others" page is open

# Testing pop up link "Computer" to "Desktop"