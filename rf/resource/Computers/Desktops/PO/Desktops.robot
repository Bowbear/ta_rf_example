*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${DESKTOPS_HEADER} =           xpath=//h1[text()="Desktops"]

*** Keywords ***
Header on "Desktops" page exist
    element should be visible    ${DESKTOPS_HEADER}