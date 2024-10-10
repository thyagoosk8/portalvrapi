
#language:pt

Feature: Validar de tipo establishment da API


Cenario: Validação de tipo de estabelecimento
Dado que realize uma request na API de estabelecimentos
Então deve encontrar a chave "typeOfEstablishment" no JSON retornado
E printar o tipo de estabelecimento
