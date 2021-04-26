*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${HOME_REGIST_LINK} =       xpath=//a[text()="Register"]
${HOME_LOGIN_LINK} =        xpath=//a[text()="Log in"]
${HOME_COMPUTERS_LINK} =    xpath=//ul[@class="top-menu notmobile"]//a[text()="Computers "]    # for not mobile devices
${HOME_DESKTOPS_LINK} =     xpath=//ul[@class="top-menu notmobile"]//a[text()="Desktops "]
${HOME_NOTEBOOKS_LINK} =    xpath=//ul[@class="top-menu notmobile"]//a[text()="Notebooks "]
${HOME_SOFTWARE_LINK} =     xpath=//ul[@class="top-menu notmobile"]//a[text()="Software "]


*** Keywords ***
Open
    [Arguments]    ${URL}
    Go To    ${URL}

Register on Page
    wait until element is visible    ${HOME_REGIST_LINK}    10s
    click link    ${HOME_REGIST_LINK}

Log in on Page
    wait until element is visible    ${HOME_LOGIN_LINK}    10s
    click link    ${HOME_LOGIN_LINK}

Select "Computers"
    wait until element is visible    ${HOME_COMPUTERS_LINK}    10s
    click link    ${HOME_COMPUTERS_LINK}

Select "Desktops" via "Computers"
    wait until element is visible    ${HOME_COMPUTERS_LINK}    10s
    mouse over    ${HOME_COMPUTERS_LINK}
    click link    ${HOME_DESKTOPS_LINK}