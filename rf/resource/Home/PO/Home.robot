*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${HOME_REGIST_LINK} =       xpath=//a[text()="Register"]
${HOME_LOGIN_LINK} =        xpath=//a[text()="Log in"]
${HOME_COMPUTERS_LINK} =    xpath=//ul[@class="top-menu notmobile"]//a[text()="Computers "]    # for not mobile devices
${HOME_COMP_DESKT_LINK} =   xpath=//ul[@class="top-menu notmobile"]//a[text()="Desktops "]
${HOME_COMP_NOTEB_LINK} =   xpath=//ul[@class="top-menu notmobile"]//a[text()="Notebooks "]
${HOME_COMP_SOFTW_LINK} =   xpath=//ul[@class="top-menu notmobile"]//a[text()="Software "]
${HOME_ELECTRONICS_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Electronics "]
${HOME_ELECT_CANPH_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Camera & photo "]
${HOME_ELECT_CELLP_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Cell phones "]
${HOME_ELECT_OTHER_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Others "]
${HOME_APPAREL_LINK} =      xpath=//ul[@class="top-menu notmobile"]//a[text()="Apparel "]
${HOME_APPAR_SHOES_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Shoes "]
${HOME_APPAR_CLOTH_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Clothing "]
${HOME_APPAR_ACCES_LINK} =  xpath=//ul[@class="top-menu notmobile"]//a[text()="Accessories "]
${HOME_DIGIDOWN_LINK} =     xpath=//ul[@class="top-menu notmobile"]//a[text()="Digital downloads "]
${HOME_BOOKS_LINK} =        xpath=//ul[@class="top-menu notmobile"]//a[text()="Books "]
${HOME_JEWELRY_LINK} =      xpath=//ul[@class="top-menu notmobile"]//a[text()="Jewelry "]
${HOME_GIFTCARDS_LINK} =    xpath=//ul[@class="top-menu notmobile"]//a[text()="Gift Cards "]

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

Select "Electronics"
    wait until element is visible    ${HOME_ELECTRONICS_LINK}    10s
    click link    ${HOME_ELECTRONICS_LINK}

Select "Apparel"
    wait until element is visible    ${HOME_APPAREL_LINK}    10s
    click link    ${HOME_APPAREL_LINK}

Select "Digital downloads"
    wait until element is visible    ${HOME_DIGIDOWN_LINK}    10s
    click link    ${HOME_DIGIDOWN_LINK}

Select "Books"
    wait until element is visible    ${HOME_BOOKS_LINK}    10s
    click link    ${HOME_BOOKS_LINK}

Select "Jewelry"
    wait until element is visible    ${HOME_JEWELRY_LINK}    10s
    click link    ${HOME_JEWELRY_LINK}

Select "Gift Cards"
    wait until element is visible    ${HOME_GIFTCARDS_LINK}    10s
    click link    ${HOME_GIFTCARDS_LINK}

Select "Desktops" via "Computers"
    wait until element is visible    ${HOME_COMPUTERS_LINK}    10s
    mouse over    ${HOME_COMPUTERS_LINK}
    click link    ${HOME_COMP_DESKT_LINK}