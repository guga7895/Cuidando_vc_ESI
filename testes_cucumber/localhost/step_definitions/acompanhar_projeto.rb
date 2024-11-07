Dado('que eu estou na pagina sobre') do
    visit('/sobre')
    assert_current_path('/sobre')
end
  
Quando /eu pressiono "aqui" em "Acesse nosso blog clicando aqui."/ do
    find('#app > div > div.pg-about.pb-20 > div > div.row.grid.grid-cols-5.gap-4 > div.column.col-span-4 > div > p.text-neutral-base.mt-5 > a').click
end

Quando /eu pressiono "Blog" no cabeçalho/ do
    find('#navbar > ul > li:nth-child(4) > a').click
end

Quando /eu pressiono "Gitlab" no corpo da pagina/ do
    find('#app > div > div.pg-about.pb-20 > div > div.row.grid.grid-cols-5.gap-4 > div.column.col-span-4 > div > p:nth-child(3) > a').click
end
  
Quando /eu pressiono "Sobre" no cabeçalho/ do
    find('#navbar > ul > li:nth-child(1) > a').click
end

Entao /eu deveria estar na pagina do blog/ do
    switch_to_window { title == 'Cuidando do Meu Bairro | Co:Lab' }
    assert_current_path('https://colab.each.usp.br/blog/tag/cuidando-do-meu-bairro/')
end
  
Entao('eu deveria ver o e-mail para contato') do
    find('#app > div > div.pg-about.pb-20 > div > div.row.grid.grid-cols-5.gap-4 > div.column.col-span-4 > div > p:nth-child(4) > a').visible?
end

Entao('eu deveria estar na pagina do gitlab do projeto') do
    switch_to_window { title == 'Cuidando do Meu Bairro · GitLab' }
    assert_current_path('https://gitlab.com/cuidandodomeubairro')
end