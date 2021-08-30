***Test Cases***
Exemplo do getlength 
    ${length}=  Get Length  Aprendendo Robot!
    log To console  ${Length}
    @{list}=  Create List    valor1  valor2  valor3  valor4 
    ${length_da_lista}=  Get Length  ${list}
    log To console  ${length_da_lista}