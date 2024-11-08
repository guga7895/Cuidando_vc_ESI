# ESI

##Pré-requisitos
- Ruby 3.3.5
  
## Integrantes
- Gustavo Ahmad Cassiari Chouman NºUSP: 13830870
- Vitor da Fonseca Rodrigues NºUSP: 13838986
- Felipe Cavalcante Lins NºUSP: 13673256
- Henrique Lopes Nicoletti NºUSP: 12745636
- Kelvin Marcelo Santos Callisaya NºUSP: 11797063
## Para clonar o repositório

```git clone --recurse-submodules https://github.com/guga7895/Cuidando_vc_ESI.git```

## CodeClimate Badge
Atualmente, estamos rodando o repositório "website-vuejs_ESI". Logo, as badges são referentes ao repositório citado.
[![Maintainability](https://api.codeclimate.com/v1/badges/43f62934c7d42fcf8a18/maintainability)](https://codeclimate.com/github/guga7895/website-vuejs_ESI/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/43f62934c7d42fcf8a18/test_coverage)](https://codeclimate.com/github/guga7895/website-vuejs_ESI/test_coverage)

## GitHub Actions Badge 

Atualmente, estamos rodando o repositório "website-vuejs_ESI". Para tal, os GitHub Actions para rodar o projeto se encontram no repositório citado. Abaixo está a badge que demonstra se o comando "npm run dev" está rodando o repositório localmente correto.
[![Rodar projeto com npm](https://github.com/guga7895/Cuidando_do_meu_bairro/actions/workflows/github-actions-run.yml/badge.svg?branch=master)](https://github.com/guga7895/Cuidando_do_meu_bairro/actions/workflows/github-actions-run.yml)

## Rodar Testes de Caracterização

```
cd ./website-vuejs_ESI
```

```
npm i
```

```
npm run test
```

## Rodar Testes Cucumber

## Testes no website no ar
Para rodar os testes cucumber no website funcionando (cuidando.vc), utilizar:
```
cucumber -p cuidando_vc
```

## Testes locais
Para rodar os testes cucumber locais (no localhost), utilizar: 

``` 
cd website-vuejs_ESI
```
```
npm i 
```
```
npm run serve
```
Rode um terminal do repositório-pai(Cuidando_vc_ESI) e digite:
```
cucumber -p localhost
```

## Compilação do website localmente

Para realizar o setup do projeto local, faça:
```
cd website-vuejs_ESI
```
```
npm i
```
```
npm run serve
```
