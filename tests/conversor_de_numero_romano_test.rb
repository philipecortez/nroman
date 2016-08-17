require 'minitest/autorun'
require File.expand_path('../lib/conversor_de_numero_romano', File.dirname(__FILE__))

class ConversorDeNumeroRomanoTest < Minitest::Test
  
  def test_deve_entender_o_numero_I
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    assert_equal 1, numero
  end

  def test_deve_entender_o_numero_V
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'V'
    assert_equal 5, numero
  end

  def test_deve_entender_o_numero_X
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'X'
    assert_equal 10, numero
  end

  def test_deve_entender_o_numero_L
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'L'
    assert_equal 50, numero
  end

  def test_deve_entender_o_numero_C
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'C'
    assert_equal 100, numero
  end

  def test_deve_entender_o_numero_D
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'D'
    assert_equal 500, numero
  end


  def test_deve_entender_o_numero_M
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'M'
    assert_equal 1000, numero
  end

  def test_deve_entender_dois_simbolos_como_II
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'II'
    assert_equal 2, numero
  end


end