***Test Cases*** 
Exemplo do uso do catenate 
    ${str1}=   catenate     Aprendendo  Robot   Framework
    ${str2}=   catenate     SEPARATOR=,  Aprendendo  Robot  Framework
    log To console  ${str1}
    log To console  ${str2}
