*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${JEWELRY_HEADER} =           xpath=//h1[text()="Jewelry"]

*** Keywords ***
Header on "Jewelry" page exist
    element should be visible    ${JEWELRY_HEADER}