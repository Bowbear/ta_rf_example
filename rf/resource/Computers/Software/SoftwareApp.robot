*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Software.robot

*** Keywords ***
I verify if "Software" page is open
    Header on "Software" page exist