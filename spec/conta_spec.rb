require_relative "../conta"

RSpec.describe Conta, "#lista" do
    lista = [[1,10],[2,-20],[3,-30]]

    context "when transaction occurs" do
        it "change 'lista' value" do
            conta = Conta.new(lista,lista[0][0],lista[0][1])
            conta.transacao(10)
            expect(conta.saldo).to eq lista[0][1]
        end
    end
end
