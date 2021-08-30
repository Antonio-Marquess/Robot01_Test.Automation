***Settings***
Library    DateTime

***Test Cases***
Exemplo do get current date 
    ${data}=  Get Current Date
    log To console  ${data} 
    ${data_formatada}=  Get Current Date    result_format=%d/%m/%Y %H:%M
    log To console     ${data_formatada}