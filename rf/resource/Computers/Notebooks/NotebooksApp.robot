*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Notebooks.robot

*** Keywords ***
I verify if "Notebooks" page is open
    Header on "Notebooks" page exist