*** Settings ***
Library     AppiumLibrary
Resource    ../configuration_device.robot
Resource  	../android_element_map.robot

*** Variables ***
${APPIUM_SERVER_URL}   http://localhost:4723/wd/hub
${GLOBALSELENIUMTIMEOUT}    ${60}
${GLOBALAPPIUMTIMEOUT}  ${60}
${ANDROID_DEVICE}	&{Nexus5X}

*** Keywords ***
Verify that HTA Title Is Display
 	AppiumLibrary.Wait Until Element Is Visible	&{AndroidGeneral}[hta_tittle]
 	AppiumLibrary.Element Text Should Be	&{AndroidGeneral}[hta_tittle]	Howtoautomate.in.th

 Input Box Should Able To Edit
 	AppiumLibrary.Wait Until Element Is Visible	&{AndroidGeneral}[hta_editbox]
 	AppiumLibrary.Input Text 	&{AndroidGeneral}[hta_editbox] 	Testing
 	AppiumLibrary.Element Text Should Be	&{AndroidGeneral}[hta_editbox]	Testing

Initial Application
    Set Appium Timeout  ${GLOBALAPPIUMTIMEOUT}s
    Set Global Variable     ${GLOBALTIMEOUT}    ${GLOBALAPPIUMTIMEOUT}
    Set Global Variable     ${IMPLICIT_WAIT}    ${GLOBALTIMEOUT/20}

Open Mobile Application
    [Arguments]     ${PLATFORMNAME}
    Run Keyword If  '${PLATFORMNAME}'=='Android'  Open Android Application	ELSE	Open IOS Application

Open Android Application
    ${avdTimeout}=  Evaluate    &{ANDROID_DEVICE}[deviceReadyTimeout]*1000
    ${autoWebViewTimeout}=  Evaluate    &{ANDROID_DEVICE}[autoWebviewTimeout]*1000
 	AppiumLibrary.Open Application	${APPIUM_SERVER_URL}	platformName=Android	app=${ROOTDIRECTORY}/demoapp/android/native.apk 	platformVersion=&{ANDROID_DEVICE}[platformVersion]	deviceName=&{ANDROID_DEVICE}[device_name]	appPackage=&{ANDROID_DEVICE}[appPackage]	appActivity=&{ANDROID_DEVICE}[appPackage].&{ANDROID_DEVICE}[appActivity]

Open IOS Application
    Log To Console	Not Implemented