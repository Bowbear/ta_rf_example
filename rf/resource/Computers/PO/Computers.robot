*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${COMP_HEADER} =           xpath=//h1[text()="Computers"]
${COMP_DESKT_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Desktops"]
${COMP_NOTEB_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Notebooks"]
${COMP_SOFTW_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Software"]
${COMP_DESKT_IMG_LNK} =    xpath=//div/a[@title="Show products in category Desktops"]
${COMP_NOTEB_IMG_LNK} =    xpath=//div/a[@title="Show products in category Notebooks"]
${COMP_SOFTW_IMG_LNK} =    xpath=//div/a[@title="Show products in category Software"]

*** Keywords ***
Header on "Computers" page exist
    element should be visible    ${COMP_HEADER}

Click on "Desktops" header link
    wait until element is visible    ${COMP_DESKT_HDR_LNK}    10s
    click link    ${COMP_DESKT_HDR_LNK}

Click on "Desktops" image link
    wait until element is visible    ${COMP_DESKT_IMG_LNK}    10s
    click link    ${COMP_DESKT_IMG_LNK}

Click on "Notebooks" header link
    wait until element is visible    ${COMP_NOTEB_HDR_LNK}    10s
    click link    ${COMP_NOTEB_HDR_LNK}

Click on "Notebooks" image link
    wait until element is visible    ${COMP_NOTEB_IMG_LNK}    10s
    click link    ${COMP_NOTEB_IMG_LNK}

Click on "Software" header link
    wait until element is visible    ${COMP_SOFTW_HDR_LNK}    10s
    click link    ${COMP_SOFTW_HDR_LNK}

Click on "Software" image link
    wait until element is visible    ${COMP_SOFTW_IMG_LNK}    10s
    click link    ${COMP_SOFTW_IMG_LNK}