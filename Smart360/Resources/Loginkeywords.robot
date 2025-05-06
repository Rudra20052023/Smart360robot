*** Settings ***
Library    SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
# Common Keywords
Open My Browser
    [Arguments]    ${URL}   ${BROWSER}  ${EXECUTABLE_PATH}
    Open Browser    ${URL}    ${BROWSER}    executable_path=${EXECUTABLE_PATH}
    Maximize Browser Window

Close My Browser
    Close Browser

# Login Page Keywords

Enter Username

    [Arguments]     ${username}
    Input Text    ${Enter_useremail}    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    ${Enter_userpassword}    ${password}

Click Sign In
    Wait Until Element Is Visible    ${Sign_in}    timeout=10
    Click Button    ${Sign_in}

Verify Successful Login Page
    Wait Until Page Contains    Welcome to Smart360

# Change the utility
change the utility
    Wait Until Element Is Visible    ${changeutility}
    Input Text    ${changeutility}    Samoa Authority Replica
    sleep    2s
    Press Keys    ${changeutility}    ENTER

# Click on the menu bar

Click on menuimg
    Wait Until Element Is Visible    ${image_menu}    timeout=5
    click element    ${image_menu}
# RX Module

Click rxmodule
    click element    ${click_rxmodule}

Click template
    click element    ${click_template}

# Add Consumer Keywords
Open Add Consumer Form
    [Arguments]    ${addformURL}
    Go To    ${addformURL}

Click Add Button
    Wait Until Element Is Visible    ${addbutton}    timeout=10
    Click Button    ${addbutton}

Enter First Name
    [Arguments]    ${firstname}
    Input Text    ${first_name}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}
    Input Text    ${last_name}    ${lastname}

Enter Email ID
    [Arguments]    ${useremail}
    Input Text    ${email}    ${useremail}

Enter Mobile No
    [Arguments]    ${mobile}
    Input Text    ${phone}    ${mobile}

Enter ID Number
    [Arguments]    ${uniqueid}
    Input Text    ${id}    ${uniqueid}

Click Checkbox
    Click Button    ${checkbox}

Save Applicant Page
    Click Button    ${save}

#Settings payment type
Open Add Paymenttype Form
    [Arguments]    ${addpaytypeURL}
    Go To    ${addpaytypeURL}

Click Add type button
    Click Button    ${add_form}

Add PaymentType
    [Arguments]    ${addtype}
    Input Text    ${payment_type}    ${addtype}

Click Submit
    Click Button    ${type_submit}

# setting payment subtype
Click Subtype Button
    Click Link    ${click_subtype}

Click Add Subtype Form
    Click Button    ${addsubtype_button}

Click dropdown
    Click Element    ${click_typedropdown}

Select Type From Dropdown
    Select From List By Index    ${dropdown_select}

Enter Subtype
    [Arguments]    ${addsubtype}
    Input Text    ${add_subtype}    ${addsubtype}

Click Subtype Submit
    Click Button    ${submitsubtype}
