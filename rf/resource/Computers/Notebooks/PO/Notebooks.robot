*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${NOTEBOOKS_HEADER} =           xpath=//h1[text()="Notebooks"]

*** Keywords ***
Header on "Notebooks" page exist
    element should be visible    ${NOTEBOOKS_HEADER}
    capture page screenshot    EMBED