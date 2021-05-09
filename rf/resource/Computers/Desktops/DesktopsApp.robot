*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Desktops.robot

*** Keywords ***
I verify if "Desktops" page is open
    Header on "Desktops" page exist