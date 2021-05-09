*** Settings ***
Documentation    Suite description

Resource    .${/}PO${/}Home.robot
Resource    ..${/}Configuration.robot

*** Keywords ***
I open the HomePage
    Home.Open    ${URL.${ENVIRONMENT}}

Close HomePage
    Home.Close

I click on "Register"
    Home.Register on Page

I click in "Login"
    Home.Log in on Page

I click on "Computers" directly
    Home.Select "Computers"

# I hover over "Computers" to select "Desktop"

# I hover over "Computers" to select "Notebooks"

# I hover over "Computers" to select "Software"

I click on "Electronics" directly
    Home.Select "Electronics"

I click on "Apparel" directly
    Home.Select "Apparel"

I click on "Digital downloads" directly
    Home.Select "Digital downloads"

I click on "Books" directly
    Home.Select "Books"

I click on "Jewelry" directly
    Home.Select "Jewelry"

I click on "Gift Cards" directly
    Home.Select "Gift Cards"