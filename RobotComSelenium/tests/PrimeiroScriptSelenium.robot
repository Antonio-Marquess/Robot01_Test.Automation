***Settings***
Library    SeleniumLibrary

***Test Cases***
Abrir navegador na página do Google 
    # Open Browser    http://www.google.com    chrome
    Abrir a página "http://www.google.com" com o navegador "chrome"
    Title Should Be  Google
    Input Text    name=q    Robot Framework SeleniumLibrary 
    Press Keys    name=q    ENTER
    Close Browser

***Keywords***
Abrir a página "${URL}" com o navegador "${navegador}"  
    open browser  ${URL}    ${navegador}


