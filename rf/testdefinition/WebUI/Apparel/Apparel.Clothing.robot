*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}ApparelApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}Clothing${/}ClothingApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Apparel/Clothing"
# $TAG_NAM="Clothing"
# $DEF_DIR="testdefinition/WebUI/Apparel/Apparel.Clothing.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Clothing" page without login
    [Documentation]    Test direct link "Apparel" to "Clothing"
    [Tags]    NOPC-39    Smoke    Apparel    Clothing
    I open the HomePage
    I click on "Apparel" directly
    I verify if "Apparel" page is open
    I choose the "Clothing" option via header link
    I verify if "Clothing" page is open

