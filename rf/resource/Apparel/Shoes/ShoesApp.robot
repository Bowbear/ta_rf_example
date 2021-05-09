*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Shoes.robot

*** Keywords ***
I verify if "Shoes" page is open
    Header on "Shoes" page exist