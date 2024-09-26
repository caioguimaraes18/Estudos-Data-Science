titulo = 'Valor Medio do Item Comprado'
print(f'{titulo:50}')
class NumerosNegativos (Exception):
    def __str__(self):
         return "Você forneceu um número negativo"
try:
  vltotal = float(input('Qual o valor total da compra: R$'))
  qtitens = int(input('Quantos itens na compra: '))
  if vltotal < 0 or qtitens < 0:
    raise NumerosNegativos
  media = round(vltotal / qtitens)
except ZeroDivisionError:
  print('Divisão por zero! O valor para Item deve ser maior que 0 !')
except ValueError:
  print('Entre com um número!')
except NumerosNegativos as error: 
  print(error)
else:
  print(f'Valor total: R$ {vltotal:.2f}, Quantidade de Itens: {qtitens}, Média por Item: R$ {media:.2f}')
finally:
  print('Continue acompanhando seus gastos!')