*** Settings ***
Library           StringFormat
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem

*** Keywords ***
Fill env
    [Arguments]    ${env}    ${remote}
    Log    ${env}
    ${DICT_URL}    Create Dictionary    live1=http://www.metrolyrics.com/    live2=https://dictionary.cambridge.org
    ###
    ${URL}    Get From Dictionary    ${DICT_URL}    ${env}
    Set Global Variable    \${BROWSER}    chrome
    Set Global Variable    \${URL}    ${URL}
    Set Global Variable    \${REMOTE_URL}    ${remote}

Init Test Environment
    [Arguments]    ${env}    ${remote}
    #${env_var}    Set Variable    ${env}
    #Set Global Variable    ${env}    live1
    #${env}    Get Variable Value    ${env_var}
    #${env}    Set Variable If    '${env}' == '\${default}'    live1    ${env}
    Fill env    ${env}    ${remote}
    Append To Environment Variable    PATH    ${EXECDIR}${/}drivers
    Set Screenshot Directory    ${EXECDIR}${/}out${/}failures
    Set Selenium Timeout    45
    Set Selenium Speed    0.6s

Before Test Ban Hang
    [Timeout]    1 minute 10 seconds
    Open Browser    ${URL}    ${BROWSER}    remote_url=${REMOTE_URL}
    Maximize Browser Window
    Login BanHang    ${USER_NAME}    ${PASSWORD}
    Wait Until Keyword Succeeds    1 min    30 sec    Deactivate print preview page

Before Test
    Open Browser    ${URL}    ${BROWSER}    remote_url=${REMOTE_URL}
    Maximize Browser Window
    Login    ${USER_NAME}    ${PASSWORD}

After Test
    Close All Browsers
