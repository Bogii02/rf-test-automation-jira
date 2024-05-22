*** Settings ***
Library     SeleniumLibrary
Variables   ../Locators/Locators.py

*** Keywords ***
Get Displayed Username
    ${username}=    Get Element Attribute    ${UserMenu}    data-username
    RETURN      ${username}

Click On User Menu
    Wait Until Element Is Visible    ${UserMenu}     timeout=5
    Click Element    ${UserMenu}

Click Log Out Button
    Wait Until Element Is Visible    ${LogoutButton}    timeout=5
    Click Button    ${LogoutButton}

Check Log In Button is Displayed
    Element Should Be Visible    ${LoginButton}
