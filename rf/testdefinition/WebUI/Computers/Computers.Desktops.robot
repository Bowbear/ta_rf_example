*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}ComputersApp.robot
Resource    ..${/}..${/}..${/}resource${/}Computers${/}Desktops${/}DesktopsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot
Resource    ..${/}..${/}..${/}resource${/}DataManager.robot

Suite Setup    Getting Test case data   ${TESTDATAPATH.DESKTOPS}    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Computers/Desktops"
# $TAG_NAM="Desktops"
# $DEF_DIR="testdefinition/WebUI/Computers/Computers.Desktops.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Variables ***
${CUSTOM} =    CUSTOM_1

*** Test Cases ***

[Robot] Testing availability of "Desktops" page without login
    [Documentation]    Test direct link "Computer" to "Desktops"
    [Tags]    NOPC-8    NOPC-30    Smoke    Computers    Desktops
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open
    I choose the "Desktop" option via header link
    I verify if "Desktops" page is open

#[Robot] Set a configurable desktop computer without login
#    [Documentation]    Test direct link "Computer" to "Desktops"
#    [Tags]    TA2-18    Erweitert
#    I open the HomePage
#    I click on "Computers" directly
#    I verify if "Computers" page is open
#    I choose the "Desktop" option via header link
#    I verify if "Desktops" page is open
#    I sort computer by - Name: A to Z
#    Choose product - Build your own computer
#    Choose configuration    ${TESTDATA.${CUSTOM}}
#    Set amount and add to cart    2
#    sleep    10s

# Testing pop up link "Computer" to "Desktop"