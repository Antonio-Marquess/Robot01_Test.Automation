***Settings*** 
Library    String

***Test Cases***
Exemplo do format string
    ${user}=  Set Variable    Antonio Marques
    ${email}=  Set Variable    antoniomarques@robotframework.org
    ${to}=  Format String    To: {} <{}>    ${user}    ${email}
    log To console    ${to}
