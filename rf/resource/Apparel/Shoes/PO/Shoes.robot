*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${SHOES_HEADER} =           xpath=//h1[text()="Shoes"]

*** Keywords ***
Header on "Shoes" page exist
    element should be visible    ${SHOES_HEADER}