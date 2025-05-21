numero_secreto = 7
tentativas = 0
limite_tentativas = 3

while tentativas < limite_tentativas:
    chute = int(input("Tente adivinhar o número (entre 1 e 10): "))

    tentativas += 1

    if chute == numero_secreto:
        print("Parabéns! Você acertou o número!")
        break
else:
    print("Que pena! Suas tentativas acabaram. Tente novamente mais tarde.")

