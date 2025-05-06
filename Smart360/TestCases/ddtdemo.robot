*** Settings ***
Library           SeleniumLibrary
Library           ../libraries/csv_reader.py
Variables       ../PageObjects/Locators.py
Resource      ../Resources/Loginkeywords.robot
Resource      ../Resources/common_variable_ddt.robot

*** Test Cases ***
Data Driven Login Test
    [Documentation]   Test login functionality using data from CSV.
    ${data}=          Read CSV    ${TEST_DATA}
    FOR    ${row}    IN    @{data}
           Log          Testing with username: ${row['username']} and password: ${row['password']}
           Login And Verify   ${row['username']}   ${row['password']}
    END

*** Keywords ***
Login And Verify
    [Arguments]       ${username}   ${password}

    Open My Browser    ${URL}    ${BROWSER}    ${EXECUTABLE_PATH}
    Enter Username     ${username}
    Enter Password     ${password}
    Click Sign In
    Verify Successful Login Page
    Close My Browser
