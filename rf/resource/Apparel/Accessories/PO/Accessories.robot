*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${ACCES_HEADER} =           xpath=//h1[text()="Accessories"]

*** Keywords ***
Header on "Accessories" page exist
    element should be visible    ${ACCES_HEADER}