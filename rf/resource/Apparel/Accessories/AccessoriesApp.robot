*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Accessories.robot

*** Keywords ***
I verify if "Accessories" page is open
    Header on "Accessories" page exist