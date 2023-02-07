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
# $RES_DIR="results/WebUI/Computers"
# $TAG_NAM="Computers"
# $DEF_DIR="testdefinition/WebUI/Computers/Computers.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

# robot --variable Build_Id:$Build_Id path/to/tests/

*** Variables ***
${CUSTOM} =    CUSTOM_1

*** Test Cases ***

[Robot] Testing the availability of the "Computers" page without login
    [Documentation]    Test direct link "Computers"
    ...    $Env:UMG='TEST'
    [Tags]    NOPC-29    Smoke    Computers
    # ${UMG}    get environment variable    %{UMG}
    log    ${UMGEBUNG.%{UMG}}
    I open the HomePage
    I click on "Computers" directly
    I verify if "Computers" page is open

