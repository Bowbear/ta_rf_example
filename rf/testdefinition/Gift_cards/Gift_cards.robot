*** Settings ***
Documentation    Testing of ordering Gift cards

Resource    ..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}resource${/}Gift_cards${/}Gift_cardsApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/Gift_cards -L TRACE rf/testdefinition/Gift_cards/Gift_cards.robot

*** Test Cases ***

[Robot] Testing of link "Gift cards" without login
    [Documentation]    Test link to "Gift cards"
    [Tags]    TA2-39    Smoke
    I open the HomePage
    I click on "Gift cards" directly
    I verify if "Gift cards" page is open

