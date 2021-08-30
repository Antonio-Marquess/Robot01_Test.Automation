***Test Cases***
Teste do if
    ${idade}=  Set Variable    77
    IF    ${idade} < 13    
        Tratar de crianças
    ELSE IF    13 <= ${idade} <=19    
        Tratar de adolescentes
    ELSE IF    20 <= ${idade} <=60    
        Tratar de adultos
    ELSE                              
        Tratar de idosos
    END    

***Keywords***
Tratar de crianças
    log To console    if criança

Tratar de adolecentes
    log To console    if do adolescente

Tratar de adultos
    log To console    if do adulto

Tratar de idosos
    log To console    if do idoso        