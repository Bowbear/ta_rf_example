*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${GIFTC_HEADER} =           xpath=//h1[text()="Gift Cards"]

*** Keywords ***
Header on "Gift cards" page exist
    element should be visible    ${GIFTC_HEADER}