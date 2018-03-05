class Noverde
  require "csv"
  require_relative "conta"

  def initialize(contas_file,transacoes_file)
    @contas_file     = contas_file
    @transacoes_file = transacoes_file
    # mantém os paths dos arquivos e cria arrays para seus conteúdos
    @contas     = read_file(@contas_file)
    @transacoes = read_file(@transacoes_file)
  end

  def calcula_transacoes
    @transacoes.each do |transacao|
      conta = set_conta(transacao[0])
      conta.transacao(transacao[1])
      conta.print_saldo
    end
  end

  private

  def read_file(file)
    CSV.read(file, {headers: false, col_sep: ',', converters: :integer})
  end

  def set_conta(numero)
    c = @contas.select { |conta| conta[0] == numero }.flatten
    Conta.new(@contas,c[0],c[1])
  end
end

nv = Noverde.new(ARGV[0],ARGV[1])
nv.calcula_transacoes
