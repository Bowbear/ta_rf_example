*** Settings ***
Documentation    Testing of ordering Jewelry

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Jewelry${/}JewelryApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/WebUI/Jewelry -L TRACE rf/testdefinition/WebUI/Jewelry/Jewelry.robot

*** Test Cases ***

[Robot] Testing of link "Jewelry" without login
    [Documentation]    Test link to "Jewelry"
    [Tags]    TA2-36    Smoke
    I open the HomePage
    I click on "Jewelry" directly
    I verify if "Jewelry" page is open

