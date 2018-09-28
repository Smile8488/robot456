*** Settings ***
Suite Setup       Init Test Environment    {remote}
Force Tags        INIT
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Resource          ../config/env_product/envi.robot

*** Test Cases ***
Open br1
    [Tags]    A1
    [Template]
    Open Browser    https://gist.github.com/    ${BROWSER}
    Close All Browsers



*** Keywords ***
