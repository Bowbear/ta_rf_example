*** Settings ***
Documentation    Testing of ordering Books

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Books${/}BooksApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Books"
# $TAG_NAM="Books"
# $DEF_DIR="testdefinition/WebUI/Books/Books.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing of link "Books" without login
    [Documentation]    Test link to "Books"
    [Tags]    NOPC-53    Smoke    Books
    I open the HomePage
    I click on "Books" directly
    I verify if "Books" page is open
