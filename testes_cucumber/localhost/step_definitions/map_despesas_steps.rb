Dado('que estou na página do mapa') do
    visit '/map-despesas'
end
  
Quando /eu mudo o ano para 2023/ do
    visit '2023/1'
end
    
Então('eu deveria ver pelo menos um marcador') do
    page.should have_css("#map-container > div.leaflet-pane.leaflet-map-pane > div.leaflet-pane.leaflet-marker-pane > div")
end

Então('devo ver o contêiner do mapa') do
    expect(page).to have_css('.c-map')
end

Então('devo ver o título e a descrição do mapa') do
    expect(page).to have_content('Acompanhe os gastos públicos da cidade de São Paulo em tempo real')
    expect(page).to have_content('O projeto Cuidando do Meu Bairro propõe tornar mais inteligível a visualização dos dados das despesas públicas a partir da geolocalização dos gastos')
end