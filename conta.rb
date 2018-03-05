require_relative "operacao"

class Conta
  attr_accessor :lista

  def initialize(lista,numero,saldo)
    @lista  = lista
    @numero = numero
    @saldo  = saldo
  end

  def numero
    @numero
  end

  def saldo
    @saldo
  end

  def transacao(valor)
    operacao = Operacao.new(@saldo,valor)
    @saldo   = operacao.novo_saldo
    set_novo_saldo
  end

  def print_saldo
    puts "#{numero},#{saldo}"
  end

  private

  def set_novo_saldo
    @lista.each { |conta| conta[1] = saldo if conta[0] == numero }
  end
end
