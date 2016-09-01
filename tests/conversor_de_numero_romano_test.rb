require 'minitest/autorun'
require File.expand_path('../lib/conversor_de_numero_romano', File.dirname(__FILE__))

class ConversorDeNumeroRomanoTest < Minitest::Unit::TestCase
  
  def test_deve_entender_numeros_com_apenas_um_simbolo
    romano = ConversorDeNumeroRomano.new
    
    ConversorDeNumeroRomano::TABELA.each do |simb, num|
      numero = romano.converte simb
      assert_equal num, numero
    end
  end

  def test_deve_entender_dois_simbolos_como_II
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'II'
    assert_equal 2, numero
  end

  def test_deve_entender_dois_numeros_dois_a_dois_como_XX
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XX'
    assert_equal 20, numero
  end

  def test_deve_entender_numeros_como_IX
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'IX'
    assert_equal 9, numero
  end

  def test_deve_entender_numeros_complexos_como_XXIV
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XXIV'
    assert_equal 24, numero
  end


end