#language:pt

Funcionalidade: Excluir
    Para que eu possa excluir um usuario
    Sendo um usuario já cadastrado
    Posso excluir esse cadastro

    @excluir
    Cenario: Excluindo usuario
        Quando eu cadastro o ususario
        E excluo esse usuario
        Então eu tenho que ver o usuario excluido