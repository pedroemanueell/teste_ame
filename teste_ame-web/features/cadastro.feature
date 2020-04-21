#language: pt

Funcionalidade: Cadastro
    Para que eu possa efetuar uma compra
    Sendo um usuario novo nomsite
    Posso efetua o cadastro com sucesso


Contexto: Home do site

    Dado que eu esteja na home do site

@cadastro
Cenario: Cadastrando usuario
    Quando eu cadastro uma conta
    Então eu tenho que ver essa conta cadastrada
    