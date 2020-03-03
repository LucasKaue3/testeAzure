#language: pt

@cep
Funcionalidade: Busca de cep

  @cep_valido
  Esquema do Cenario: Buscar Cep Válido
    Dado que eu realize uma busca do cep <cep>
    Então valido que o cep é valido
  Exemplos:
    |    cep    |
    | "valido"  |

  @cep_invalido
  Esquema do Cenario: Buscar Cep Inválido
    Dado que eu realize uma busca do cep <cep>
    Então valido que o cep é inválido

  Exemplos:
    |    cep     |
    | "invalido" |
