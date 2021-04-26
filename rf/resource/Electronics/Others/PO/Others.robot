*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${OTHERS_HEADER} =           xpath=//h1[text()="Others"]

*** Keywords ***
Header on "Others" page exist
    element should be visible    ${OTHERS_HEADER}