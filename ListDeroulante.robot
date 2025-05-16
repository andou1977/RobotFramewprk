
*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}  file:///C:/Users/andou/Downloads/html-application-form.html
${send}  others

${url2}   file:///C:/Users/andou/Downloads/html-quiz-form.html

*** Keywords ***

*** Test Cases ***
Lister Deroulante
   Open Browser  ${url}  firefox
   Select From List By Value    id=occupation  ${send}
Choisir
   Open Browser  ${url2}  firefox
   Click Element  id=qusOne

