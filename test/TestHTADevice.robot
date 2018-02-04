*** Settings ***
Suite Setup     Suite Setup
Suite Teardown  Close Application
Test Setup  Test Setup
Test Teardown   Test Teardown
Resource    ../resources/keywords/HTADevices.robot

*** Test Case ***
Log for testing
    Log To Console  Log test

*** Keywords ***
Suite Setup
    Log To Console  Sute Setup
    Initial Application
    Open Mobile Application     ${PLATFORMNAME}

Test Setup
    Log To Console  Test Setup

Test Teardown
    Log To Console  Test Teardown
