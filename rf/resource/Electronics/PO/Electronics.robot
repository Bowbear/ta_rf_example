*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${ELECT_HEADER} =       xpath=//h1[text()="Electronics"]
${ELECT_CNP_HDR_LNK} =  xpath=//h2/a[@title="Show products in category Camera & photo"]
${ELECT_CLP_HDR_LNK} =  xpath=//h2/a[@title="Show products in category Cell phones"]
${ELECT_OTH_HDR_LNK} =  xpath=//h2/a[@title="Show products in category Others"]
${ELECT_CNP_IMG_LNK} =  xpath=//div/a[@title="Show products in category Camera & photo"]
${ELECT_CLP_IMG_LNK} =  xpath=//div/a[@title="Show products in category Cell phones"]
${ELECT_OTH_IMG_LNK} =  xpath=//div/a[@title="Show products in category Others"]

*** Keywords ***
Header on "Electronics" page exist
    element should be visible    ${ELECT_HEADER}

Click on "Camera & photo" header link
    wait until element is visible    ${ELECT_CNP_HDR_LNK}    10s
    click link    ${ELECT_CNP_HDR_LNK}

Click on "Camera & photo" image link
    wait until element is visible    ${ELECT_CNP_IMG_LNK}    10s
    click link    ${ELECT_CNP_IMG_LNK}

Click on "Cell phones" header link
    wait until element is visible    ${ELECT_CLP_HDR_LNK}    10s
    click link    ${ELECT_CLP_HDR_LNK}

Click on "Cell phones" image link
    wait until element is visible    ${ELECT_CLP_IMG_LNK}    10s
    click link    ${ELECT_CLP_IMG_LNK}

Click on "Others" header link
    wait until element is visible    ${ELECT_OTH_HDR_LNK}    10s
    click link    ${ELECT_OTH_HDR_LNK}

Click on "Others" image link
    wait until element is visible    ${ELECT_OTH_IMG_LNK}    10s
    click link    ${ELECT_OTH_IMG_LNK}