
*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${username}  standard_user
${password}  secret_sauce
${url}     https://www.saucedemo.com/


*** Keywords ***


*** Test Cases ***
Authentification
     Open Browser      ${url}    firefox
     Maximize Browser Window
     Input Text    id=user-name    ${username}
     Input Password    id=password    ${password}
     Click Element     id=login-button
     ${title}  Get Title
     Log  ${title}
     Title Should Be   Swag Labs
     Sleep    20s




