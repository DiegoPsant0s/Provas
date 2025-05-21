inicio = int(input("Digite o número inicial do intervalo: "))
fim = int(input("Digite o número final do intervalo: "))
soma_pares = 0
encontrou_par = False  
for numero in range(inicio, fim + 1):
    if numero % 2 == 0:
        soma_pares += numero
        encontrou_par = True
else:
    if not encontrou_par:
        print("Não há números pares no intervalo fornecido.")
    else:
        print("A soma dos números pares no intervalo é:", soma_pares)
