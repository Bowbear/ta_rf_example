*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}resource${/}Electronics${/}ElectronicsApp.robot
Resource    ..${/}..${/}resource${/}Electronics${/}Cell_phones${/}Cell_phonesApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Electronics/Cell_phones -L TRACE rf/testdefinition/Electronics/Electronics.Cell_phones.robot

*** Test Cases ***

[Robot] Testing of direct link "Electronics" to "Cell_phones" without login
    [Documentation]    Test direct link "Electronics" to "Cell_phones"
    [Tags]    TA2-10    Smoke
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Cell_phones" option via header link
    I verify if "Cell_phones" page is open

# Testing pop up link "Computer" to "Desktop"