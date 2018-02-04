*** Variable ***
${CHROMEDRIVERPATH}     tools/chromedriver.exe
${MAC_CHROMEDRIVERPATH}     tools/chromedriver

*** Keywords ***
Open Chrome Browser If Not Opened
    [Arguments]     ${url}
    ${status}   ${return}   Run Keyword And Ignore Error    Get Window Identifiers
    Return From Keyword If  '${status}'=='PASS'
    ${options}=     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()   sys, selenium.webdriver
    ${chromedriver}=    Run Keyword If  sys.platform.startswith('win')  Create Webdriver    Chrome  executable_path=${CURDIR}${/}${CHROMEDRIVERPATH} chrome_options=${options}   ELSE    Create Webdriver    Chrome      executable_path=${CURDIR}${/}${MAC_CHROMEDRIVERPATH}     chrome_options=${options}
    Log  URL=${url}
    Go To   ${url}
    Maximize Browser Window