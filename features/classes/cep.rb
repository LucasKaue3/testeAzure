# encode: UTF-8

class Cep
  def get_cep
    # Armazenando o response para obter informações em outros métodos
    $response = HTTParty.get(
      $viacep_url[$env] + "#{$cepResult}/json/",
      headers: { 'Content-Type' => 'application/json' }
    )
  end

  def cep_valido
    result = $response.parsed_response['cep']
    if result != $cepResult
      raise ArgumentError, 'Retorno de c\xC3\xB3digo inv\xC3\xA1lido'
    end

    puts "retorno da pesquisa: #{$response.body}"
    puts "retorno do código: #{$response.code}"
  end

  def cep_invalido
    result = $response.parsed_response['erro']
    raise ArgumentError, 'Cep localizado' if result != true
  end
end
