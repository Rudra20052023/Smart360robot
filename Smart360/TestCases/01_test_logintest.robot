*** Settings ***
Library       SeleniumLibrary
Resource      ../Resources/Loginkeywords.robot
Resource      ../Resources/common_variable.robot

*** Test Cases ***
Login Test
    [Tags]  Smoke
    Open My Browser    ${URL}    ${BROWSER}    ${EXECUTABLE_PATH}
    Enter Username     ${USERNAME}
    Enter Password    ${PASSWORD}
    sleep    2s
    Click Sign In
    Verify Successful Login Page
    sleep    7s



