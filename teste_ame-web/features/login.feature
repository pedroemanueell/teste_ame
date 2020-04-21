 #language: pt
@login
 Funcionalidade: Login
    Para que eu possa gerenciar minha conta
    Sendo um usuario cadastrado
     posso acessar meu email com login e senha

    
    Contexto: Home do site

        Dado que eu esteja na home do site
    
    @acesso
    Cenario: Acesso
        Quando eu faco login com 'ame_teste@ame.com.br' e 'amedigital'
        Então devo ver "MY ACCOUNT" na aerea logada
    
    @senha_invalida
    Cenario: Senha invalida
        Quando eu faco login com "ame_teste@ame.com.br" e "1233"
        Então devo ver a mensagem de alerta "Invalid password."

    @usuario_nao_existe
    Cenario: Usuario não existe
        Quando eu faco login com "ame01@ame.com.br" e "amedigital"
        Então devo ver a mensagem de alerta "Authentication failed."

    @email_nao_informado
    Cenario: Email não informado
        Quando eu faco login com "" e "amedigital"
        Então devo ver a mensagem de alerta "An email address required."

    @esenha_nao_informada
    Cenario: Senha não informada
        Quando eu faco login com "ame_teste@ame.com.br" e ""
        Então devo ver a mensagem de alerta "Password is required."