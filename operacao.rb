class Operacao
  def initialize(saldo,valor_transacao)
    @saldo           = saldo
    @valor_transacao = valor_transacao
    @resultado       = saldo + valor_transacao
  end

  def novo_saldo
     multa? ? (@resultado - 5) : @resultado
  end

  private

  def debito?
    true if @valor_transacao < 0
  end

  def multa?
    true if debito? && @resultado < 0
  end
end
