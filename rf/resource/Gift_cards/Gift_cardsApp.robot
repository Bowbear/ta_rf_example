*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Gift_cards.robot

*** Keywords ***
I verify if "Gift cards" page is open
    Header on "Gift cards" page exist
