*** Settings ***
Documentation    Suite description

Resource    ./PO/Camera_n_photo.robot

*** Keywords ***
I verify if "Camera & photo" page is open
    Header on "Camera & photo" page exist