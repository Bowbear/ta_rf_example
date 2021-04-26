*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}resource/Computers/ComputersApp.robot
Resource    ..${/}..${/}resource/Computers/Notebooks/NotebooksApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Computers/Notebooks -L TRACE rf/testdefinition/Computers/Computers.Notebooks.robot

*** Test Cases ***

Testing of direct link "Computer" to "Notebooks" without login
    [Documentation]    Test direct link "Computer" to "Notebooks"
    [Tags]    Smoke    TA2-6
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Notebooks" option via header link
    I verify if "Notebooks" page is open

# Testing pop up link "Computer" to "Notebooks"