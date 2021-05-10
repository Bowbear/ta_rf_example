*** Settings ***
Documentation    Testing of ordering Books

Resource    ..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}resource${/}Books${/}BooksApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# robot -d rf/results/Books -L TRACE rf/testdefinition/Books/Books.robot

*** Test Cases ***

[Robot] Testing of link "Books" without login
    [Documentation]    Test link to "Books"
    [Tags]    TA2-38    Smoke
    I open the HomePage
    I click on "Books" directly
    I verify if "Books" page is open

