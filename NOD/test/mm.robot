*** Settings ***
Suite Setup       Init Test Environment    ${env}    {remote}
Force Tags        INIT
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Resource          ../config/env_product/envi.robot

*** Test Cases ***
Open br1
    [Tags]    AA
    [Template]
    Open Browser    ${URL}    ${BROWSER}
    Close All Browsers

Open br2
    [Tags]    BB
    [Template]
    Open Browser    ${URL}    ${BROWSER}
    Close All Browsers

*** Keywords ***
