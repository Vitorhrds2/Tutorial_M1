extends Node2D

var nome = "Vitor"
var numero = 0
var lista = []
onready var inventario = [[get_node("Inventario/Fruit1"),get_node("Inventario/Label1")],[get_node("Inventario/Fruit2"),get_node("Inventario/Label2")],[get_node("Inventario/Fruit3"),get_node("Inventario/Label3")]]

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # variavel número estava acentuada e faltava o sifração no LineEdit
	$LineEdit.text = str(numero)
	# $LineEdit.text = nome comando não faz sentido



func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):

		lista.append(numero) # variavel n foi declarada com n maiúculo
	#$Label.text = numero comando errado
		$Label.text += str(lista[i]) + "\n" # impreme para o usuário
		numero = numero + 1 # variavel n foi declarada com n mauiúcculo e ao invés do i é ao numero 1



func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range(10):
		if(lista[i]%2==1):
			$Label.text += str(nome)+"baldo"+"\n"
		else:
			$Label.text += str(nome)+"\n"
