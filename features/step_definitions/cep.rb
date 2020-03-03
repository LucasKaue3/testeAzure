buscaCep = Cep.new

Dado(/^que eu realize uma busca do cep "([^"]*)"$/) do |cep|
  # Armazenando o cepResult para ser validado em outros métodos
  $cepResult = buscar_massa('tipoCep', cep)
  buscaCep.get_cep
end

Então("valido que o cep é valido") do
  buscaCep.cep_valido
end

Então("valido que o cep é inválido") do
  buscaCep.cep_invalido
end
