*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        chrome
${URL}      https://www.google.com.ua
${query}    prozorro


*** Test Cases ***
Open Browser To Login Page
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Login Page Should Be Open  
    Input text  name:q  ${query}
    sleep  5s  
    Submit Form
    Click Element  class:LC20lb
    sleep  15s 
    Close Browser

*** Keywords ***
Login Page Should Be Open
    Title Should Be    Google
