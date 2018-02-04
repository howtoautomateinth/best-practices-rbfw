*** Settings ***
Suite Setup     Suite Setup
Suite Teardown  Close All Browsers
Test Setup  Test Setup
Test Teardown   Test Teardown
Resource    ../resources/keywords/common.robot
Resource    ../resources/keywords/HTA.robot
Resource    ../resources/configuration_web.robot

*** Test Cases ***
Latest Aritcle Should have 5 items
    Verify Page Display
    Verify Latest Article Display
    Article List Should Equal To    ${5}

*** Keywords ***
Suite Setup
    Log To Console  Sute Setup
    Open Chrome Browser If Not Opened   ${URL}

Test Setup
    Log To Console  Test Setup

Test Teardown
    Log To Console  Test Teardown