*** Settings ***
Suite Setup       Init Test Environment    {remote}
Force Tags        INIT
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Resource          ../config/env_product/envi.robot

*** Test Cases ***
Open br1
    [Tags]    AA
    [Template]
    Open Browser    https://gist.github.com/    ${BROWSER}
    Close All Browsers

Open br2
    [Tags]    BB
    [Template]
    Open Browser    https://www.google.com/    ${BROWSER}
    Close All Browsers

*** Keywords ***
