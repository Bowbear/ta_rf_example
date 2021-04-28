*** Settings ***
Documentation    Testing of ordering a desktop computer

Resource    ..${/}..${/}resource/Home/HomeApp.robot
Resource    ..${/}..${/}resource/Login/LoginApp.robot
Resource    ..${/}..${/}resource/Electronics/ElectronicsApp.robot
Resource    ..${/}..${/}resource/Electronics/Camera_n_photo/Camera_n_photoApp.robot
Resource    ..${/}..${/}resource${/}Common.robot
Resource    ..${/}..${/}resource${/}Configuration.robot

Suite Setup    Getting User data    ${VALID_USER_DATA}
Test Setup    I open the browser  ${BROWSER}
Test Teardown    End Web Test

# Befehl:
# robot -d rf/results/Electronics/Camera_n_photo -L TRACE rf/testdefinition/Electronics/Electronics.Camera_n_photo.robot

*** Test Cases ***

[Robot] Testing of direct link "Electronics" to "Camera and photo" without login
    [Documentation]    Test direct link "Electronics" to "Camera and photo"
    [Tags]    TA2-9    Smoke
    I open the HomePage
    I click on "Electronics" directly
    I verify if "Electronics" page is open
    I choose the "Camera & photo" option via header link
    I verify if "Camera & photo" page is open

# Testing pop up link "Computer" to "Desktop"