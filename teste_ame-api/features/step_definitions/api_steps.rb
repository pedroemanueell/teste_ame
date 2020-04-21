Quando("eu cadastro o ususario") do
    @cadastro = ApiUsers.new
    @cadastro.cadastrando_usuario
    $result = @cadastro.cadastrando_usuario
end

Quando("eu tenho um usauario cadastrado") do
    @validacao = ApiUsers.new
    @validacao.validando_usuario
    $val = @validacao.validando_usuario
end

Quando("excluo esse usuario") do
    @delete = ApiUsers.new
    @delete.deletando_usuario
    $del = @delete.deletando_usuario
end
  
Então("eu tenho que ver esse usuario cadastrado") do
    expect($result.response.code).to eql "200"
    puts $result
    puts $result.response.code
end

Então("tenho que validar as informações do usuario") do
    expect($val.response.code).to eql "200"
    puts $val
    puts $val.response.code
end

Então("eu tenho que ver o usuario excluido") do
    expect($del.response.code).to eql "200"
    puts $del
    puts $del.response.code
end

