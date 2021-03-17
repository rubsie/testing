*** Test cases ***
Log the largest number
    ${numberA}=  Set Variable  ${7}
    ${numberB}=  Set Variable  ${8}
    Run Keyword If  ${numberA}>${numberB}  Log to Console  ${numberA}  ELSE  Log to Console  ${numberB}