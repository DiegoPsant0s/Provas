num_alunos = int(input("Digite o número de alunos: "))

soma_medias_turma = 0

for i in range(num_alunos):
    print(f"\nAluno {i + 1}")
    nome = input("Nome do aluno: ")
    
    notas = []
    for j in range(1, 4):
        nota = float(input(f"Digite a nota {j} do aluno {nome}: "))
        notas.append(nota)
    
    media = sum(notas) / 3
    soma_medias_turma += media

    status = "Aprovado" if media >= 7.0 else "Reprovado"

    print(f"\nAluno: {nome}")
    print(f"Notas: {notas}")
    print(f"Média: {media:.2f}")
    print(f"Status: {status}")

media_geral = soma_medias_turma / num_alunos
print(f"\nMédia geral da turma: {media_geral:.2f}")
