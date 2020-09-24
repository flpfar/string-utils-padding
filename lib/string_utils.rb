class StringUtils
  def padding(frase, padding_array)
    result = ''

    return 'Valor de padding inválido' if padding_array.any?(&:negative?)

    result += "\n" * padding_array[0]
    result += ' ' * (padding_array[3] || padding_array[1] || padding_array[0]) 
    result += frase
    result += ' ' * (padding_array[1] || padding_array[0])
    result += "\n" * (padding_array[2] || padding_array[0])
  end
end
