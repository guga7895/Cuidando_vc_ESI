Dado /que eu estou na tela inicial/ do
  visit ''
end

Dado /que eu estou no formulario de login/ do
  steps %Q{
    Dado que eu estou na tela inicial
    Quando eu pressiono "Entrar" no cabeçalho 
  }

end

Quando /eu pressiono "Entrar" no cabeçalho/ do
  find('#navbar > ul > li:nth-child(5) > a').click
end

Quando /eu preencho "Nome de usuário" com "(.*)"/ do |nomeDeUsuario|
  fill_in('Nome de usuário', :with => nomeDeUsuario)
end

Quando /eu preencho "Senha" com "(.*)"/ do |senha|
  fill_in('Senha', :with => senha)
end

Quando /eu pressiono "Entrar" no formulario de login/ do
  within("#modal-dialog") do
    click_button('Entrar')
  end
end

Quando /eu clico em "Crie uma conta" no formulario/ do
  find('#modal-dialog > div > div:nth-child(2) > div > form > div.mt-3.flex.justify-between.text-sm.font-medium.text-neutral-base > div.text-sm.font-medium.text-neutral-base > a').click
end

Entao /eu deveria ver "(.*)" dentro do css "(.*)"/ do |texto, css|
  find(css).assert_text(texto)
end