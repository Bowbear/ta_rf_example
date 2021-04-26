*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${CAMNPH_HEADER} =           xpath=//h1[text()="Camera & photo"]

*** Keywords ***
Header on "Camera & photo" page exist
    element should be visible    ${CAMNPH_HEADER}