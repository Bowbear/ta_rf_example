*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${SOFTWARE_HEADER} =           xpath=//h1[text()="Software"]

*** Keywords ***
Header on "Software" page exist
    element should be visible    ${SOFTWARE_HEADER}
    capture page screenshot    EMBED