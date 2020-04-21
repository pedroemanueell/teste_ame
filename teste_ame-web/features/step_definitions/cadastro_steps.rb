Dado("que eu esteja na home do site") do
    home = Home_page.new
    home.load
end
  
Quando("eu cadastro uma conta") do
    @cadastro = Cadastro_page.new
    @cadastro.acesso_cadastro
    @cadastro.cadastrando_usuario
end
  
Então("eu tenho que ver essa conta cadastrada") do
    validacao = find('#center_column .page-heading')
    expect(validacao.text).to eql nome_esperado 
    puts validacao.text
end