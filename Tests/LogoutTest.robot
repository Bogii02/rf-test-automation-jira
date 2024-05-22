*** Settings ***
Library  SeleniumLibrary
Resource  ../PageObject/Keywords/HomePage.robot
Resource    ../PageObject/Keywords/Common.robot
Variables   ../PageObject/TestData/TestData.py


*** Variables ***
${URL}      ${SITE_URL}
${username}     ${JIRA_USERNAME}
${password}     ${JIRA_PASSWORD}
${browser}  Chrome


*** Test Cases ***
Successful Logout
    [Documentation]     This test case verifies that the user is able to successfully Logout from Jira Software
    Common.Log in to Jira Software    ${URL}    ${browser}    ${JIRA_USERNAME}    ${JIRA_PASSWORD}
    Click On User Menu
    Click Log Out Button

    Check Log In Button is Displayed