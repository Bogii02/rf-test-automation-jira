*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/Locators.py


*** Keywords ***
Fill Summary
    [Arguments]     ${summary}
    Wait Until Element Is Visible    ${SummaryField}
    Input Text    ${SummaryField}    ${summary}
    
Click Create Issue Button
    Click Button    ${CreateIssueSubmitButton}

Get to Created Issue's Page
    Wait Until Element Is Visible    ${IssueName}
    Click Element    ${IssueName}