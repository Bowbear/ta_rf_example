*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}resource${/}Apparel${/}ApparelApp.robot
Resource    ..${/}..${/}resource${/}Apparel${/}Clothing${/}ClothingApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/Apparel/Clothing -L TRACE rf/testdefinition/Apparel/Apparel.Clothing.robot

*** Test Cases ***

[Robot] Testing of direct link "Apparel" to "Clothing" without login
    [Documentation]    Test direct link "Apparel" to "Clothing"
    [Tags]    TA2-    Smoke
    I open the HomePage
    I click on "Apparel" directly
    I verify if "Apparel" page is open
    I choose the "Clothing" option via header link
    I verify if "Clothing" page is open

