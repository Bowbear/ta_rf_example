*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Clothing.robot

*** Keywords ***
I verify if "Clothing" page is open
    Header on "Clothing" page exist