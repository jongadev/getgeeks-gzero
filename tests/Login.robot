*Settings*

Documentation       Login test suite

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       Finish Session 


*Test Cases*
User Login

    ${user}                      Factory User Login
    
    Go To Login Page
    Fill Credentials             ${user}
    Submit Credentials
    User Should Be Logged In     ${user}

Incorrect Pass
    [Tags]          i_pass

    ${user}         Create Dictionary       email=jolgabriel@hotmail.com        password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials 
    Modal Content Should Be     Usuário e/ou senha inválidos.

User not found
    [Tags]          user_404

    ${user}         Create Dictionary       email=jolgabriel&hotmail.com        password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials 
    Modal Content Should Be     Usuário e/ou senha inválidos.  

Incorrect Email
    [Tags]          i_email

    ${user}         Create Dictionary       email=jolgabrie.com.br        password=abc123

    Go To Login Page
    Fill Credentials            ${user}
    Submit Credentials 
    Shoul Be Type Email           
