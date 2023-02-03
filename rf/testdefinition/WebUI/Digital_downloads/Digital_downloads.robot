*** Settings ***
Documentation    Testing of ordering digital downloads

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Digital_downloads${/}Digital_downloadsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Digital_downloads"
# $TAG_NAM="Digital_downloads"
# $DEF_DIR="testdefinition/WebUI/Digital_downloads/Digital_downloads.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing of availability "Digital downloads" page without login
    [Documentation]    Test link to "Digital downloads"
    [Tags]    NOPC-52    Smoke    Digital_downloads
    I open the HomePage
    I click on "Digital downloads" directly
    I verify if "Digital downloads" page is open

