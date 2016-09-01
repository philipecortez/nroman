class ConversorDeNumeroRomano

  TABELA = {
      'I' => 1,
      'II' => 2,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }.freeze
  
  def converte(numero_em_romano)
    acumulador = 0
    ultimo_vizinho_da_direita = 0


    numero_em_romano.
    split('').
    reverse.
    each do |n|
      atual = TABELA[n]

      multiplicador = 1
      multiplicador = -1 if atual < ultimo_vizinho_da_direita
      
      acumulador += atual * multiplicador
      ultimo_vizinho_da_direita = atual
    end
    
    acumulador
  end
end