*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Books.robot

*** Keywords ***
I verify if "Books" page is open
    Header on "Books" page exist
