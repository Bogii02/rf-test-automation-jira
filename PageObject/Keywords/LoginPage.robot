*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/Locators.py


*** Keywords ***
Opening browser
    [Arguments]  ${site_url}  ${browser}
    Open Browser  ${site_url}  ${browser}

Enter username
    [Arguments]     ${username}
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5
    Input Text  ${LoginUsernameInputBox}  ${username}

Enter Password
    [Arguments]     ${password}
    Wait Until Element Is Visible  ${LoginPasswordInputBox}  timeout=5
    Input Text  ${LoginPasswordInputBox}  ${password}

Click Log in Button
    Click Element   ${LoginButton}

Check error message is visible
    Wait Until Element Is Visible    ${ErrorMessage}
    Element Should Be Visible    ${ErrorMessage}