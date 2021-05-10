*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Jewelry.robot

*** Keywords ***
I verify if "Jewelry" page is open
    Header on "Jewelry" page exist
