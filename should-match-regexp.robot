***Test Cases***
Exemplo de regexp
    ${numero}=    Set Variable    123456
    Should Match Regexp    ${numero}    ^\\d{6}$
