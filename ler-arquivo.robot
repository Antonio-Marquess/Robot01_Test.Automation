***Settings*** 
Library    OperatingSystem
Library    String

***Test Cases***
Exemplo para ler arquivo 
    ${conteudo}=    Get File    ${CURDIR}/dados.txt
    @{linhas}=    Split to lines    ${conteudo}
    FOR  ${linha}  IN  @{linhas}
        log To console    ${linha}
    END