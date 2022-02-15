*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Desktops.robot

*** Keywords ***
I verify if "Desktops" page is open
    Header on "Desktops" page exist

I sort computer by - ${Sorting}
    Sort by    ${Sorting}

Choose product - ${Product}
    Select product    ${Product}

Choose configuration
    [Arguments]    ${Config}
    Select configuration    ${Config}

Set amount and add to cart
    [Arguments]    ${Amount}
    Add to cart    ${Amount}
