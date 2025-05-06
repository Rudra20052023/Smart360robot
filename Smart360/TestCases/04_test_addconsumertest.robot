*** Settings ***
Library       SeleniumLibrary
Resource      ../Resources/Loginkeywords.robot
Resource      ../Resources/common_variable.robot

*** Test Cases ***
Add Consumer Test
    Open My Browser    ${URL}    ${BROWSER}    ${EXECUTABLE_PATH}
    Enter Username     ${USERNAME}
    Enter Password     ${PASSWORD}
    Click Sign In
    sleep    10
    Go To              ${addformURL}
    sleep    10
    Click Add Button
    Enter First Name    Rushi
    Enter Last Name     Padela
    Enter Email ID      albertpadela@yopmail.com
    Enter Mobile No     9999999999
    Enter ID Number     220202
    Click Checkbox
    Save Applicant Page
    #Close My Browser
