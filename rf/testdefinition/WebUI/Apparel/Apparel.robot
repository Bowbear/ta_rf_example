*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}ApparelApp.robot
Resource    ..${/}..${/}..${/}resource${/}Apparel${/}Accessories${/}AccessoriesApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Apparel"
# $TAG_NAM="Apparel"
# $DEF_DIR="testdefinition/WebUI/Apparel/Apparel.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Apparel" page without login
    [Documentation]    Test direct link "Apparel" to "Accessories"
    [Tags]    NOPC-44    Smoke    Apparel
    I open the HomePage
    I click on "Apparel" directly
    I verify if "Apparel" page is open
