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

    numero_em_romano.
    split('').
    inject(0) {|acc, n| acc + TABELA[n]}
  end
end