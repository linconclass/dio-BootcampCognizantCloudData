import os ##Importa o módulo ou biblioteca OS
##integra os programas e recursos do S.O

print("#" * 60) ##Imprimindo #60 vezes

ip_ou_host = input("Digite o IP ou HOST a ser verificado: ")
#criamos uma variavel que vai receber do usuario um ip

print("-" * 60) ##Imprimindo #60 vezes

os.system('print -n 6 {}'.format(ip_ou_host))
##chamando system da biblioteca OS -comando ping
##-n -num de pacores que serão 6 {}

print("-" * 60) ##Imprimindo #60 vezes
