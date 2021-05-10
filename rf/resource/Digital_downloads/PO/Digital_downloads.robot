*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${DIGDOWN_HEADER} =           xpath=//h1[text()="Digital downloads"]

*** Keywords ***
Header on "Digital downloads" page exist
    element should be visible    ${DIGDOWN_HEADER}