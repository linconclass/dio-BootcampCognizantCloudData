lista = [7, -5, 6, -3.4, 4.6, 12]

pos_count = 0
for num in lista:
    if num >= 0:
        pos_count += 1

print(pos_count," números positivos")

print("-" *60)
#Complete os espaços em branco com uma solução possível para o problema.
lista = [7, -5, 6, -3.4, 4.6, 12]
counter = 0
for number in range(6):
    if number > 0:
        counter += 1

print(counter, "valores positivos ")

lista = [7, -5, 6, -3.4, 4.6, 12]
i = 0
while i < 6:
    lista.append(int(input()))
    i += 1
lista.sort()
print(lista)

print("-" *60)

X, Y = map(int, input().split())
while (   ):
    floor = min(X, Y)
    top = max(X, Y)
    if ( map >= 0 ):
        print("Crescente")
    elif (        ):
        print("Decrescente")
    X, Y = map(int, input().split())