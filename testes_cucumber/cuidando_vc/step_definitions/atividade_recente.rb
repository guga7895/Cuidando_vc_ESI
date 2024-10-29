Dado('que estou na tela inicial do website') do
    visit '/map-despesas'
end
  
Então('eu desço a página até a seção "Atividades Recentes"') do
    expect(page).to have_css('.c-map')
end

Então('eu deveria ver ao menos uma atividade recente') do
    expect(page).to have_content('Atividades Recentes')
    atv_recente = find('#app > div > div:nth-child(2) > div > div.bg-gray-50 > div > div > ol > li:nth-child(1)')
    expect(atv_recente).to be_visible
end