*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}ComputersApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}Desktops${/}DesktopsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting Test case data   ${TESTDATAPATH.ts1}    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="/results/WebUI/Computers/Desktops"
# $TAG_NAM="Smoke"
# $DEF_DIR="testdefinition/WebUI/Computers/Computers.Desktops.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing of direct link "Computer" to "Desktops" without login
    [Documentation]    Test direct link "Computer" to "Desktops"
    [Tags]    TA2-17    Smoke    Computer    Desktops
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Desktop" option via header link
    I verify if "Desktops" page is open

[Robot] Set a configurable desktop computer without login
    [Documentation]    Test direct link "Computer" to "Desktops"
    [Tags]    TA2-17    Smoke    Erweitert
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Desktop" option via header link
    I verify if "Desktops" page is open
    I sort computer by - Name: A to Z
    Choose product - Build your own computer
    Choose configuration    ${TESTDATA.CUSTOM}
    Set amount and add to cart    2
    sleep    10s

# Testing pop up link "Computer" to "Desktop"