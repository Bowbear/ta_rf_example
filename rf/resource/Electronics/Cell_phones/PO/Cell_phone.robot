*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${CELLPH_HEADER} =           xpath=//h1[text()="Cell phones"]

*** Keywords ***
Header on "Cell phones" page exist
    element should be visible    ${CELLPH_HEADER}