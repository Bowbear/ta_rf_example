*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${APPRL_HEADER} =           xpath=//h1[text()="Apparel"]
${APPRL_SHOES_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Shoes"]
${APPRL_CLOTH_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Clothing"]
${APPRL_ACCES_HDR_LNK} =    xpath=//h2/a[@title="Show products in category Accessories"]
${APPRL_SHOES_IMG_LNK} =    xpath=//div/a[@title="Show products in category Shoes"]
${APPRL_CLOTH_IMG_LNK} =    xpath=//div/a[@title="Show products in category Clothing"]
${APPRL_ACCES_IMG_LNK} =    xpath=//div/a[@title="Show products in category Accessories"]

*** Keywords ***
Header on "Apparel" page exist
    element should be visible    ${APPRL_HEADER}

Click on "Shoes" header link
    wait until element is visible    ${APPRL_SHOES_HDR_LNK}    10s
    click link    ${APPRL_SHOES_HDR_LNK}

Click on "Shoes" image link
    wait until element is visible    ${APPRL_SHOES_IMG_LNK}    10s
    click link    ${APPRL_SHOES_IMG_LNK}

Click on "Clothing" header link
    wait until element is visible    ${APPRL_CLOTH_HDR_LNK}    10s
    click link    ${APPRL_CLOTH_HDR_LNK}

Click on "Clothing" image link
    wait until element is visible    ${APPRL_CLOTH_IMG_LNK}    10s
    click link    ${APPRL_CLOTH_IMG_LNK}

Click on "Accessories" header link
    wait until element is visible    ${APPRL_ACCES_HDR_LNK}    10s
    click link    ${APPRL_ACCES_HDR_LNK}

Click on "Accessories" image link
    wait until element is visible    ${APPRL_ACCES_IMG_LNK}    10s
    click link    ${APPRL_ACCES_IMG_LNK}