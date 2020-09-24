require 'spec_helper'

describe StringUtils do
  it 'Checa se a frase faz padding de 1 espaço' do
    frase = 'Telefone... Minha casa.'

    expectativa = "\n"\
                  ' Telefone... Minha casa. '\
                  "\n"
    expect(StringUtils.new.padding(frase, [1, 1, 1, 1])).to eq expectativa
  end

  it 'Checa se a frase faz padding com 3 valores' do
    frase = 'Telefone... Minha casa.'
    expectativa = "\n"\
                  "\n"\
                  ' Telefone... Minha casa. '\
                  "\n"\
                  "\n"\
                  "\n"
    expect(StringUtils.new.padding(frase, [2, 1, 3])).to eq expectativa
  end

  it 'Checa se a frase faz padding com 2 valores' do
    frase = 'Telefone... Minha casa.'
    expectativa = "\n"\
                  "\n"\
                  '    Telefone... Minha casa.    '\
                  "\n"\
                  "\n"
    expect(StringUtils.new.padding(frase, [2, 4])).to eq expectativa
  end

  it 'Checa se a frase faz padding com 1 valor' do
    frase = 'Telefone... Minha casa.'
    expectativa = "\n"\
                  "\n"\
                  '  Telefone... Minha casa.  '\
                  "\n"\
                  "\n"
    expect(StringUtils.new.padding(frase, [2])).to eq expectativa
  end

  it 'Checa se consegue montar com valor 0' do
    frase = 'Telefone... Minha casa.'
    expectativa = 'Telefone... Minha casa.'

    expect(StringUtils.new.padding(frase, [0, 0, 0, 0])).to eq expectativa
  end

  it 'Falha se array tem número negativo' do
    frase = 'Telefone... Minha casa.'

    expect(StringUtils.new.padding(frase, [-1, 0, 0, 0])).to eq 'Valor de padding inválido'
  end
end
