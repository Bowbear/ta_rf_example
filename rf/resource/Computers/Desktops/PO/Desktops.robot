*** Settings ***
Documentation    dd

Library    SeleniumLibrary

*** Variables ***
${DESKTOPS_HEADER} =           xpath=//h1[text()="Desktops"]
${DESKTOPS_SORTBY_SLCT} =      xpath=//select[@id="products-orderby"]
${DESKTOP_PROCESS_SLCT} =      xpath=//select[@id="product_attribute_1"]
${DESKTOP_RAM_SLCT} =          xpath=//select[@id="product_attribute_2"]
${DESKTOP_SOFTW_MSO} =         xpath=//input[@id="product_attribute_5_10"]
${DESKTOP_SOFTW_ACR} =         xpath=//input[@id="product_attribute_5_11"]
${DESKTOP_SOFTW_TCO} =         xpath=//input[@id="product_attribute_5_12"]
${DESKTOP_AMOUNT_TXT} =        xpath=//input[@id="product_enteredQuantity_1"]
${DESKTOP_A2C_BTN} =           xpath=//button[@id="add-to-cart-button-1"]

*** Keywords ***
Header on "Desktops" page exist
    element should be visible    ${DESKTOPS_HEADER}

Sort by
    [Arguments]    ${Sorting}
    select from list by label    ${DESKTOPS_SORTBY_SLCT}    ${Sorting}

Select product
    [Arguments]    ${Product}
    sleep    1s
    click link    xpath=//h2/a[text()="${Product}"]

Select configuration
    [Arguments]    ${config}
    run keyword unless    '${config.processor}' == '${EMPTY}'    Select Processor    ${config.processor}
    run keyword unless    '${config.ram}' == '${EMPTY}'    Select RAM    ${config.ram}
    run keyword unless    '${config.hdd}' == '${EMPTY}'    Select HDD    ${config.hdd}
    run keyword unless    '${config.os}' == '${EMPTY}'    Select OS    ${config.os}
    run keyword     Select MSO    ${config.ms_office}
    run keyword     Select Acrobat    ${config.acrobat}
    run keyword     Select TCO    ${config.total_commander}

Select Processor
    [Arguments]    ${Processor}
    select from list by label    ${DESKTOP_PROCESS_SLCT}    ${Processor}

Select RAM
    [Arguments]    ${RAM}
    select from list by label    ${DESKTOP_RAM_SLCT}    ${RAM}

Select HDD
    [Arguments]    ${HDD}
    ${for} =    get element attribute    //label[text()="${HDD}"]    for
    click element    id:${for}

Select OS
    [Arguments]    ${OpSys}
    ${for} =    get element attribute    //label[text()="${OpSys}"]    for
    click element    id:${for}

Select MSO
    [Arguments]    ${MSO}
    run keyword if    '${MSO}' == 'true'
    ...    select checkbox    ${DESKTOP_SOFTW_MSO}
    ...    ELSE    unselect checkbox    ${DESKTOP_SOFTW_MSO}

Select Acrobat
    [Arguments]    ${Acrobat}
    run keyword if    '${Acrobat}' == 'true'
    ...    select checkbox    ${DESKTOP_SOFTW_ACR}
    ...    ELSE    unselect checkbox    ${DESKTOP_SOFTW_ACR}

Select TCO
    [Arguments]    ${TCO}
    run keyword if    '${TCO}' == 'true'
    ...    select checkbox    ${DESKTOP_SOFTW_TCO}
    ...    ELSE    unselect checkbox    ${DESKTOP_SOFTW_TCO}

Add to cart
    [Arguments]    ${amount}
    input text    ${DESKTOP_AMOUNT_TXT}    ${amount}    true
    click button    ${DESKTOP_A2C_BTN}