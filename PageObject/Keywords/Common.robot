*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py


*** Keywords ***
Log in to Jira Software
    [Arguments]  ${site_url}    ${browser}    ${username}     ${password}
    Open Browser  ${site_url}  ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginUsernameInputBox}
    Input Text  ${LoginUsernameInputBox}  ${username}
    Input Text  ${LoginPasswordInputBox}  ${password}
    Click Element    ${LoginButton}
