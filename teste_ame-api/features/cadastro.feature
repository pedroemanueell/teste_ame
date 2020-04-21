#language:pt

Funcionalidade: Cadastro
    Para que eu possa ter informações de funcionarios
    Sendo um funcionario novo na empresa
    Posso cadastrar esse funcionario

@cadastro
    Cenario: Cadastro de ususario
        Quando eu cadastro o ususario
        Então eu tenho que ver esse usuario cadastrado

@validacao
    Cenario: Validando usuario cadastrado
        Quando eu tenho um usauario cadastrado
        Então tenho que validar as informações do usuario
