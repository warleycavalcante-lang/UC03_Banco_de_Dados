programa {

  const inteiro CAIXAS_POR_PALETE = 40

  funcao inicio() {
  inteiro quantidade, paletes, sobras
  real  peso, peso_total, temperatura

  escreva("quantidade de caixas: ") 
  leia(quantidade)
  escreva("peso de cada caixa (kg): ")
  leia(peso)
  escreva("temperatura da camara (c): ")
  leia(temperatura)

  peso_total = quantidade * peso 
  paletes = quantidade / CAIXAS_POR_PALETE
  sobras = quantidade % CAIXAS_POR_PALETE

  escreva("\npeso total produzido: ", peso_total, "kg\n")
  escreva("paetes completos: ", paletes, "\n")
  escreva("caixas restantes: ", sobras, "\n") 

  se (temperatura <= -18 e paletes >= 1)

  escreva("carregamento liberado")

  senao 
  
  escreva("nenhum palete completo" )

  }
}
