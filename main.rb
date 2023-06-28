ACOES_INSTRUCAO = {
  "(" => 1,  # Incrementa o andar em 1
  ")" => -1  # Decrementa o andar em 1
}

def calcular_andar(instrucoes)
  """
  Calcula o andar final com base nas instruções dadas.
  Um parêntese de abertura '(' indica subida de um andar.
  Um parêntese de fechamento ')' indica descida de um andar.
  """
  andar_atual = 0
  instrucoes.each_char do |instrucao|
    andar_atual += ACOES_INSTRUCAO[instrucao] || 0
  end
  andar_atual
end

def imprimir_resultado(instrucoes, andar_final)
  puts "Instruções: #{instrucoes}"
  puts "Andar resultante: #{andar_final}"
  puts
end

# Lista de instruções
lista_instrucoes = [
  "(())",
  "()()",
  "((((",
  "(()(()(",
  "))(((((",
  "())",
  "))(",
  ")))",
  ")())())"
]

# Imprimir os resultados diretamente em um loop
lista_instrucoes.each do |instrucoes|
  andar_final = calcular_andar(instrucoes)
  imprimir_resultado(instrucoes, andar_final)
end