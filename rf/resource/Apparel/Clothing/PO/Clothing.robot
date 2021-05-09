*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${CLOTH_HEADER} =           xpath=//h1[text()="Clothing"]

*** Keywords ***
Header on "Clothing" page exist
    element should be visible    ${CLOTH_HEADER}