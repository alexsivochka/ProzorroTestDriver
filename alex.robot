*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        chrome
${URL}      https://www.google.com.ua
${query}    prozorro


*** Test Cases ***
Open Browser To Login Page
    [Setup]    Set Log Level    TRACE
    Open Browser  ${URL}  ${BROWSER}
    Login Page Should Be Open  
    Input text  name:47  ${query} 
    Submit Form
    Click Element  class:LC20lb
    sleep  15s 
    Close Browser

*** Keywords ***
Login Page Should Be Open
    Title Should Be    Google
