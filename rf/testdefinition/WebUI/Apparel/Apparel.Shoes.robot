*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}ApparelApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}Shoes${/}ShoesApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Apparel/Shoes"
# $TAG_NAM="Shoes"
# $DEF_DIR="testdefinition/WebUI/Apparel/Apparel.Shoes.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of direct link "Apparel" to "Shoes" without login
    [Documentation]    Test direct link "Apparel" to "Shoes"
    [Tags]    NOPC-38    Smoke    Apparel    Shoes
    I open the HomePage
    I click on "Apparel" directly
    I verify if "Apparel" page is open
    I choose the "Shoes" option via header link
    I verify if "Shoes" page is open

