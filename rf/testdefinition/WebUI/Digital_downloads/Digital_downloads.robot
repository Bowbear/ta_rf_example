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
# robot -d rf/results/WebUI/Digital_downloads -L TRACE rf/testdefinition/WebUI/Digital_downloads/Digital_downloads.robot

*** Test Cases ***

[Robot] Testing of link "Digital downloads" without login
    [Documentation]    Test link to "Digital downloads"
    [Tags]    TA2-37    Smoke
    I open the HomePage
    I click on "Digital downloads" directly
    I verify if "Digital downloads" page is open

