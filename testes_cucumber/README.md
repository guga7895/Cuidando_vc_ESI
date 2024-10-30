# Rodar Testes Cucumber

Primeiro, use cd ../ para acessar o terminal no repositório "Cuidando_vc_ESI".

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