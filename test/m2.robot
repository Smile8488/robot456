*** Settings ***
Suite Setup       Init Test Environment    {remote}
Force Tags        INIT
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Resource          ../config/env_product/envi.robot

*** Test Cases ***
Open br2
    [Tags]    A2
    [Template]
    Open Browser    https://www.google.com/    ${BROWSER}
    Close All Browsers

*** Keywords ***
