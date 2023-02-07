*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}..${/}resource${/}Home${/}HomeApp.robot
Resource    ..${/}..${/}..${/}resource${/}Login${/}LoginApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}ElectronicsApp.robot
Resource    ..${/}..${/}..${/}resource${/}Electronics${/}Camera_n_photo${/}Camera_n_photoApp.robot
Resource    ..${/}..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Command:
# $RES_DIR="results/WebUI/Electronics/Camera_n_photo"
# $TAG_NAM="Camera_n_photo"
# $DEF_DIR="testdefinition/WebUI/Electronics/Electronics.Camera_n_photo.robot"
# python -m robot -d $RES_DIR -L TRACE -i $TAG_NAM $DEF_DIR

*** Test Cases ***

[Robot] Testing availability of "Camera and photo" page without login
    [Documentation]    Test direct link "Electronics" to "Camera and photo"
    [Tags]    NOPC-36    Smoke    Electronics    Camera_n_photo
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Camera & photo" option via header link
    I verify if "Camera & photo" page is open

# Testing pop up link "Computer" to "Desktop"