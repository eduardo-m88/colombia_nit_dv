require "colombia_nit_dv"

RSpec.describe ColombiaNitDv do
  it "calcula correctamente el DV de un NIT válido" do
    expect(ColombiaNitDv.verification_digit("900373923")).to eq(8)
  end

  it "acepta NIT con puntos, guiones y espacios" do
    expect(ColombiaNitDv.verification_digit(" 900.373.923- ")).to eq(8)
  end

  it "lanza error si el nit no es numérico" do
    expect { ColombiaNitDv.verification_digit("ABC123") }.to raise_error(ArgumentError)
  end
end
