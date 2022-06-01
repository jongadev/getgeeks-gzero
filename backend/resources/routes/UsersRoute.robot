*Settings*
Documentation     Users route


*Keywords*

POST User
    [Arguments]         ${payload}

    ${response}         POST
    ...                 ${API_USERS}/users
    ...                 json=${payload}
    ...                 expected_status=any

    [return]  ${response}


Delete User
    [Arguments]         ${token}

    ${headers}          Create Dictionary   Authorization=${token}


    ${response}         Delete
    ...                 ${API_USERS}/users
    ...                 headers=${headers}
    ...                 expected_status=any

    [return]  ${response}    


Get User
    [Arguments]         ${token}

    ${headers}          Create Dictionary   Authorization=${token}


    ${response}         Get
    ...                 ${API_USERS}/users
    ...                 headers=${headers}
    ...                 expected_status=any

    [return]  ${response}  

Put User
    [Arguments]         ${token}        ${payload}

     ${headers}          Create Dictionary   Authorization=${token}

    ${response}         PUT
    ...                 ${API_USERS}/users
    ...                 json=${payload}
     ...                headers=${headers}
    ...                 expected_status=any

    [return]  ${response}         
