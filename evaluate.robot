***Test Cases***
Exemplo do uso da Keyboard evaluate
    ${ns}=   Create Dictionary    x=${4}    y=${2}
    ${resultado}=   Evaluate  x+y    namespace=${ns}
    log to console   ${resultado}     