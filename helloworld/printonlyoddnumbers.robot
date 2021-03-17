*** Test cases ***
Print only odd numbers
    ${number}=  Set Variable  ${1}
    FOR  ${number}  IN RANGE  100
        Run Keyword If  ${number}%2==0  Log to Console  ${number}
    END