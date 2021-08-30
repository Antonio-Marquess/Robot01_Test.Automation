***Settings***
Library    String

***Test Cases*** 
Exemplo de teste maiusculo/minusculo
    ${str1}=    Convert To Lower Case    ESSE TEXTO VAI SER CONVERTIDO PARA MINUSCULO 
    log To console          ${str1}
    ${str2}=    Convert To Upper Case    esse texto vai ser convertido para maiusculo 
    log To console          ${str2}