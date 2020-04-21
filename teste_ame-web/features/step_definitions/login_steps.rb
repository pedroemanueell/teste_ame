Quando("eu faco login com {string} e {string}") do |email, senha|
    @login = Login_page.new
    @login.acesso_conta(email, senha)
end
  
Então("devo ver {string} na aerea logada") do |nome_esperado|
    nome = find('#center_column .page-heading')
    expect(nome.text).to eql nome_esperado 
    puts nome.text
end

Então("devo ver a mensagem de alerta {string}") do |senha_invalida|
    senha = find('.alert-danger')
    expect(senha.text).to have_content senha_invalida
    puts senha.text 
end
