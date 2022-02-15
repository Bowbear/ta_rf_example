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
# robot -d rf/results/WebUI/Apparel/Accessories -L TRACE rf/testdefinition/WebUI/Apparel/Apparel.Accessories.robot

*** Test Cases ***

[Robot] Testing of direct link "Apparel" to "Accessories" without login
    [Documentation]    Test direct link "Apparel" to "Accessories"
    [Tags]    TA2-35    Smoke    Apparel    Apparel_Accessories
    I open the HomePage
    I click on "Apparel" directly
    I verify if "Apparel" page is open
    I choose the "Accessories" option via header link
    I verify if "Accessories" page is open

