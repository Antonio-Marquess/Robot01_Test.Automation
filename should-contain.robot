***Test Cases***
Exemplo de teste dp should contain
    Should contain    Estou aprendendo Robot   robo

Exemplo de teste dp should contain com listas 
    @{cores}=    Create List    azul  preto  branco  rosa  verde
    Should contain    ${cores}    vermelho    msg=A cor informada não esta na listaa

    