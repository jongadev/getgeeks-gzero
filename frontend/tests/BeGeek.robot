*Settings*
Documentation       BeGeek teste suite

Resource            ${EXECDIR}/resources/Base.robot

Test Setup          Start Session
Test Teardown       Finish Session 

*Test Cases*
Be a Geek
    [Tags]      smoke
    #Dado que eu tenho um usuário comum
    ${user}     Factory User        be_geek

    #Faço login ba plataforma Getgekks
    Do Login  ${user}

    #Quando submeto o formulário para me tornar um Geek(pretador de serviço)
    Go To Geek Form
    Fill Geek Form  ${user}[geek_profile]
    Submit Geek Form
    Sleep           10
    #Então devo ver a messagem de sucesso
    Geek Form Should Be Sucess



    


        




               


