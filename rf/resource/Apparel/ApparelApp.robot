*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Apparel.robot

*** Keywords ***
I verify if "Apparel" page is open
    Header on "Apparel" page exist

I choose the "Shoes" option via header link
    Click on "Shoes" header link

I choose the "Shoes" option via image link
    Click on "Shoes" image link

I choose the "Clothing" option via header link
    Click on "Clothing" header link

I choose the "Clothing" option via image link
    Click on "Clothing" image link

I choose the "Accessories" option via header link
    Click on "Accessories" header link

I choose the "Accessories" option via image link
    Click on "Accessories" image link