*** Settings ***
Suite Setup     Suite Setup
Suite Teardown  Close Application
Test Setup  Test Setup
Test Teardown   Test Teardown
Resource    ../resources/keywords/HTADevices.robot

*** Test Case ***
HTA Tittle Should Display
 	Verify that HTA Title Is Display
 	Input Box Should Able To Edit

*** Keywords ***
Suite Setup
    Log To Console  Sute Setup
    Initial Application
    Open Mobile Application     ${PLATFORMNAME}

Test Setup
    Log To Console  Test Setup

Test Teardown
    Log To Console  Test Teardown
