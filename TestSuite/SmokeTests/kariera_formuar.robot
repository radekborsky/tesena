*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Documentation
Library    SeleniumLibrary
Resource          resource.robot

*** Variables ***

*** Test Cases ***
sample test case
    [Documentation]    tesena test
    [Tags]  smoke

    Open Browser To Tesena Career Page
    Solve Cookies
    Input Name
    Input Surname
    Input Phone Number
    Input Email
    Input Message
    Attach File
    Personal Data Checkbox Check
    Submit Form
    Form Confirmation shown

    [Teardown]    Close Browser
*** Keywords ***
