*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}ComputersApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}Notebooks${/}NotebooksApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/WebUI/Computers/Notebooks -L TRACE rf/testdefinition/WebUI/Computers/Computers.Notebooks.robot
# Command:
# $RES_DIR="results/WebUI/Computers/Notebooks"
# $TAG_NAM="Notebooks"
# $DEF_DIR="testdefinition/WebUI/Computers/Computers.Notebooks.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Notebooks" page without login
    [Documentation]    Test direct link "Computer" to "Notebooks"
    [Tags]    NOPC-8    NOPC-31    Smoke    Computers    Notebooks
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Notebooks" option via header link
    I verify if "Notebooks" page is open

# Testing pop up link "Computer" to "Notebooks"