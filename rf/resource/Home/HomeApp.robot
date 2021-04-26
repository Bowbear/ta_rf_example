*** Settings ***
Documentation    Suite description

Resource    ./PO/Home.robot
Resource    ../Configuration.robot

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

I hover over "Computers" to "Desktop"