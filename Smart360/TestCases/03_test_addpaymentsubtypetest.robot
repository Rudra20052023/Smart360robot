*** Settings ***
Library       SeleniumLibrary
Resource      ../Resources/Loginkeywords.robot
Resource      ../Resources/common_variable.robot


*** Test Cases ***
Add Payment Subtype
    Open My Browser    ${URL}    ${BROWSER}    ${EXECUTABLE_PATH}
    Enter Username     ${USERNAME}
    Enter Password     ${PASSWORD}
    Click Sign In
    Sleep    5
    Go To              ${addpaytypeURL}
    Sleep    5
    Click Subtype Button
    Click Add Subtype Form
    Click dropdown
    Select Type From Dropdown   1
    Enter Subtype   Registration fees
    Click Subtype Submit
