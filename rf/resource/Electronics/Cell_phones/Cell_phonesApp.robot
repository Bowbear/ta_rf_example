*** Settings ***
Documentation    Suite description

Resource    ./PO/Cell_phone.robot

*** Keywords ***
I verify if "Cell phones" page is open
    Header on "Cell phones" page exist