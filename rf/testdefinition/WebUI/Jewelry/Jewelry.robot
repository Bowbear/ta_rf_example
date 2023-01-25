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
# $RES_DIR="results/WebUI/Jewelry"
# $TAG_NAM="Jewelry"
# $DEF_DIR="testdefinition/WebUI/Jewelry/Jewelry.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR


*** Test Cases ***

[Robot] Testing of link "Jewelry" without login
    [Documentation]    Test link to "Jewelry"
    [Tags]    TA2-36    Smoke    Jewelry
    I open the HomePage
    I click on "Jewelry" directly
    I verify if "Jewelry" page is open

