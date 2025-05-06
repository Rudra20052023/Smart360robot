*** Settings ***
Library       SeleniumLibrary
Resource      ../Resources/Loginkeywords.robot
Resource      ../Resources/common_variable.robot


*** Test Cases ***
Add Payment Type
    [Tags]  Regression
    Open My Browser    ${URL}    ${BROWSER}    ${EXECUTABLE_PATH}
    Enter Username     ${USERNAME}
    Enter Password     ${PASSWORD}
    Click Sign In
    sleep    10
    Go To              ${addpaytypeURL}
    Click Add type button
    Add PaymentType     fees
    Click Submit

