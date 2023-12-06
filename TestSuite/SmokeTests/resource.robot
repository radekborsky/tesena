*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://www.tesena.com/kariera
${BROWSER}        Firefox
${NAME}           radek
${SURNAME}        borsky
${EMAIL}          test@test.com
${PHONE}          777777777
${CV_FILE_PATH}   C:\\Users\\RR\\PycharmProjects\\tesena\\Files\\a.txt
${MESSAGE}        blab\nbla${SPACE}bla\nb la

*** Keywords ***
Open Browser To Tesena Career Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Tesena Career Page Should Be Open

Tesena Career Page Should Be Open
    Title Should Be    Kariéra — Tesena

Input Name
#    [Arguments]    ${name}
    Input Text    //*[@id="field-name"]    ${NAME}

Input Surname
#    [Arguments]    ${SURNAME}
    Input Text    field-surname  ${SURNAME}

Input Phone Number
    Input Text    field-phone    ${PHONE}

Input Email
    Input Text    field-email    ${EMAIL}

Input Message
    Input Text    field-message    ${MESSAGE}

Attach File
    Choose File    field-cv    ${CV_FILE_PATH}

Personal Data Checkbox Check
    Click Element    css=div[class="field-label-text"]

Solve Cookies
    Click Element    xpath://*[text()="Povolit nezbytné"]

Submit Form
    Click Button    field-field_form_1_5_0_0

Form Confirmation shown
    Wait Until Page Contains    Zpráva byla odeslána. Děkujeme za Vaši reakci.