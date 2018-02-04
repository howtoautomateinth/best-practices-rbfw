*** Setting ***
Resource    ../HTAWebElementsMap.robot

*** Variables ***
${GLOBALTIMEOUT}    ${30}
${URL}  http://www.howtoautomate.in.th

*** Keywords ***
Article List Should Equal To
    [Arguments]     ${size}     ${timeout}=${GLOBALTIMEOUT}
    Wait Until Element Is Visible   &{LatestSection}[article_list]  ${timeout}
    ${articles}=     Get WebElements     &{LatestSection}[article_list]
    ${list_size}=   Get Length  ${articles}
    Should Be Equal As Integers     ${size}     ${list_size}

Verify Page Display
    [Arguments]     ${timeout}=${GLOBALTIMEOUT}
    Wait Until Element Is Visible   &{General}[logo]    ${timeout}

Verify Latest Article Display
    [Arguments]     ${timeout}=${GLOBALTIMEOUT}
    Wait Until Element Is Visible   &{LatestSection}[section_title]    ${timeout}