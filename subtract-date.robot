***Settings***
Library    DateTime

***Test Cases***
Exemplo subtract date 
    ${diff1}=  Subtract Date From Date    2021-08-31    2021-08-25    result_format=verbose
    log To console    ${diff1} 
    