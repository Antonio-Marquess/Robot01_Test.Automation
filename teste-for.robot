***Test Cases***
Testando for sobre listas 
    @{cores}=    Create List    azul  verde  amarelo  vermelho  rosa 
    FOR  ${cor}    IN    @{cores} 
    log To console    ${cor}
    END    

Testando for sobre listas pular item
    @{cores}=    Create List    azul  verde  amarelo  vermelho  rosa 
    FOR  ${cor}    IN    @{cores} 
    Continue For Loop If    '${cor}' == 'amarelo'
    log To console    ${cor}
    END 

Testando for sobre listas parar em um item
    @{cores}=    Create List    azul  verde  amarelo  vermelho  rosa 
    FOR  ${cor}    IN    @{cores} 
    Exit For Loop If    '${cor}' == 'amarelo'
    log To console    ${cor}
    END 



Testando for in range
    FOR  ${index}    IN RANGE    1    11 
       log To console    ${index}
    END 

Testando for in range com incremento
    FOR  ${index}    IN RANGE    1    11  3
       log To console    ${index}
    END           