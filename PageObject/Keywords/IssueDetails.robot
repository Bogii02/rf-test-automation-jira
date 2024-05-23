*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/Locators.py


*** Keywords ***
Get issue's summary
    ${summary}=     Get Text    ${SummaryValue}
    RETURN      ${summary}

Delete issue
    Wait Until Element Is Visible    ${DropdownMenu}
    Click Element    ${DropdownMenu}
    Wait Until Element Is Visible    ${DeleteButton}
    Click Element    ${DeleteButton}
    Wait Until Element Is Visible    ${SubmitIssueDeletionBtn}
    Click Element    ${SubmitIssueDeletionBtn}