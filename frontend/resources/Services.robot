*Settings*
Documentation       Services API

Library             RequestsLibrary


*Variables*
${API_GATEWAY}      https://getgeeks-gateway-jonga.herokuapp.com


*Keywords*
Get Token Service
    [Arguments]        ${user}

    ${payload}         Create Dictionary
    ...                email=${user}[email]
    ...                password=${user}[password]

    ${response}        POST     ${API_GATEWAY}/sessions     json=${payload}

    ${token}           Set Variable      Bearer ${response.json()}[token]

    [return]           ${token}

Be a Geek Service    
    [Arguments]        ${payload}           ${token}

    ${headers}         Create Dictionary    Authorization=${token}

        ${response}    POST                 ${API_GATEWAY}/Geeks
        ...            json=${payload}     
        ...            headers=${headers}

        [return]       ${response}