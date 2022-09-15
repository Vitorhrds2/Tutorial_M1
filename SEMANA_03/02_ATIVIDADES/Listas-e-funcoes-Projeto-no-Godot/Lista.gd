extends Node2D

var lista
var listaPreenchida = []
var listaVazia = []

func _ready():
	pass

func _on_Instrucao_pressed():
	lista = ["Nome","E-mail"]
	$ColorRect/Infos.text = "Digite as informacoes " + str(lista)
	
	
func _on_EnviarDados_pressed():
	listaVazia.append($EditNome.text+"\n")
	listaVazia.append($EditEmail.text)
	$ColorRect/Resultado.text = str(listaVazia)
	pass # Replace with function body.


func _on_FuncaoTexto_pressed():
	$ColorRect/Resultado.text = ""
	textoRetornavel("As informacoes foram apagadas com sucesso!")
	pass # Replace with function body.


func _on_EnviarPFuncao_pressed():
	informacoesSeguras($EditNome.text, $EditEmail.text)
	pass # Replace with function body.

func textoRetornavel(texto: String):
	$ColorRect/Infos.text = texto
	return texto

func informacoesSeguras(editNome: String, editEmail: String):
	listaVazia.append(editNome+"\n")
	listaVazia.append(editEmail)
	$ColorRect/Resultado.text = str(listaVazia)
	return editNome
	return editEmail
