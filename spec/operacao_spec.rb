require_relative "../operacao"

RSpec.describe Operacao, "#novo_saldo" do
    context "when valor_transacao" do
        operacao_1 = Operacao.new(10,-15)
        it "is negative and novo_saldo is negative" do
            expect(operacao_1.novo_saldo).to eq (-10)
        end

        operacao_2 = Operacao.new(10,-5)
        it "is negative and novo_saldo is positive" do
            expect(operacao_2.novo_saldo).to eq 5
        end

        operacao_3 = Operacao.new(-10,5)
        it "is positive and novo_saldo is negative" do
            expect(operacao_3.novo_saldo).to eq (-5)
        end

        operacao_4 = Operacao.new(10,10)
        it "is positive and novo_saldo is positive" do
            expect(operacao_4.novo_saldo).to eq (20)
        end
    end
end
