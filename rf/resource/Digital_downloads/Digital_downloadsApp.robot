*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Digital_downloads.robot

*** Keywords ***
I verify if "Digital downloads" page is open
    Header on "Digital downloads" page exist
