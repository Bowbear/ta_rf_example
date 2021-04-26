*** Settings ***
Documentation    Suite description

Resource    ./PO/Electronics.robot

*** Keywords ***
I verify if "Electronics" page is open
    Header on "Electronics" page exist

I choose the "Camera & photo" option via header link
    Click on "Camera & photo" header link

I choose the "Camera & photo" option via image link
    Click on "Camera & photo" image link

I choose the "Cell phones" option via header link
    Click on "Cell phones" header link

I choose the "Cell phones" option via image link
    Click on "Cell phones" image link

I choose the "Others" option via header link
    Click on "Others" header link

I choose the "Others" option via image link
    Click on "Others" image link