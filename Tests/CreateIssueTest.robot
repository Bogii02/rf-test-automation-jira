*** Settings ***
Library  SeleniumLibrary
Resource    ../PageObject/Keywords/Common.robot
Resource    ../PageObject/Keywords/HomePage.robot
Resource    ../PageObject/Keywords/CreateIssue.robot
Resource    ../PageObject/Keywords/IssueDetails.robot
Variables   ../PageObject/TestData/TestData.py


*** Variables ***
${URL}      ${SITE_URL}
${username}     ${JIRA_USERNAME}
${password}     ${JIRA_PASSWORD}
${browser}  Chrome
${summary}=     This test issue is created for test purposes.


*** Test Cases ***
Successful Issue Creation
    [Documentation]     This test case verifies that the user is able to successfully create and issue.
    Common.Log in to Jira Software    ${URL}    ${browser}    ${username}   ${password}

    Click Create Button
    Fill summary    ${summary}
    Click Create Issue Button
    Get to Created Issue's Page

    ${actual}       Get issue's summary

    Should Be Equal As Strings    ${actual}    ${summary}

    Delete issue
    [Teardown]  Close Browser
