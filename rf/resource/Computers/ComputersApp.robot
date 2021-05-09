*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Computers.robot

*** Keywords ***
I verify if "Computers" page is open
    Header on "Computers" page exist

I choose the "Desktop" option via header link
    Click on "Desktops" header link

I choose the "Desktop" option via image link
    Click on "Desktops" image link

I choose the "Notebooks" option via header link
    Click on "Notebooks" header link

I choose the "Notebooks" option via image link
    Click on "Notebooks" image link

I choose the "Software" option via header link
    Click on "Software" header link

I choose the "Software" option via image link
    Click on "Software" image link