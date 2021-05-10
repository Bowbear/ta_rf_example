*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${BOOKS_HEADER} =           xpath=//h1[text()="Books"]

*** Keywords ***
Header on "Books" page exist
    element should be visible    ${BOOKS_HEADER}