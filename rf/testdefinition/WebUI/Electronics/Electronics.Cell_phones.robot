*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}ElectronicsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}Cell_phones${/}Cell_phonesApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Electronics/Cell_phones"
# $TAG_NAM="Cell_phones"
# $DEF_DIR="testdefinition/WebUI/Electronics/Electronics.Cell_phones.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Cell_phones" page without login
    [Documentation]    Test direct link "Electronics" to "Cell_phones"
    [Tags]    TA2-10    Smoke    Electronics    Cell_phones
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Cell_phones" option via header link
    I verify if "Cell_phones" page is open

# Testing pop up link "Computer" to "Desktop"