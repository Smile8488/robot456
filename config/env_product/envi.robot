*** Settings ***
Library           StringFormat
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem

*** Keywords ***
Fill env
    [Arguments]    ${remote}
    Set Global Variable    \${BROWSER}    chrome
    Set Global Variable    \${REMOTE_URL}    ${remote}

Init Test Environment
    [Arguments]    ${remote}
    #${env_var}    Set Variable    ${env}
    #Set Global Variable    ${env}    live1
    #${env}    Get Variable Value    ${env_var}
    #${env}    Set Variable If    '${env}' == '\${default}'    live1    ${env}
    Fill env    ${remote}
    Append To Environment Variable    PATH    ${EXECDIR}${/}drivers
    Set Screenshot Directory    ${EXECDIR}${/}out${/}failures
    Set Selenium Timeout    45
    Set Selenium Speed    0.6s
