# language: pt

Funcionalidade: ver informações no mapa
  Cenário: Visualizar mapa e verificar elementos
    Dado que estou na página do mapa
    Então devo ver o contêiner do mapa
    E devo ver o título e a descrição do mapa

  Cenario: ver marcador no mapa em 2023
    Dado que estou na página inicial
    Quando eu mudo o ano para 2023
    Então eu deveria ver pelo menos um marcador