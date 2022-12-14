*** Settings ***
Library           SeleniumLibrary
Resource          variables.robot


*** Keywords ***

Load Page
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window
    Sleep  3s

Page Should Be Open
    Title Should Be    ${TITLE} 


Get Quote Text
    ${Quote} =    Get Text
    ...  //div/*[@id="${TextId}"] 
    [Return]   ${Quote}

Get Author Name
    ${Author} =    Get Text
    ...  //div/*[@id="${AuthorId}"] 
    [Return]   ${Author}

Click New Quote Button
    Click Element
    ...  //div/*[@id="${NewQuoteId}"]








