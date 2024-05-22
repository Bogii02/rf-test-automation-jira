*** Settings ***
Library  SeleniumLibrary
Resource  ../PageObject/Keywords/LoginPage.robot
Resource  ../PageObject/Keywords/HomePage.robot
Variables   ../PageObject/TestData/TestData.py


*** Variables ***
${URL}      ${SITE_URL}
${username}     ${JIRA_USERNAME}
${password}     ${JIRA_PASSWORD}
${browser}  Chrome


*** Test Cases ***
Successful Login
    [Documentation]     This test case verifies that the user is able to successfully Login to Jira Software
    [Tags]      Smoke

    Open Browser  ${URL}  ${browser}
    Maximize Browser Window
    Enter Username      ${username}
    Enter Password    ${password}
    Click Log in Button

    ${actual}=      Get Displayed Username

    Should Be Equal As Strings      ${actual}   ${username}

    [Teardown]  Close Browser

Unsuccessful Login with Wrong Password
    Open Browser  ${URL}  ${browser}
    Maximize Browser Window
    Enter Username      ${username}
    Enter Password    wrong
    Click Log in Button

    Check error message is visible

    [Teardown]  Close Browser
