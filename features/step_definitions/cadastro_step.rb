Dado('que acesso a página de cadastro') do
  visit 'http://rocklov-web:3000/signup'
end

Quando('submeto o meu cadastro completo') do
  find('#fullName').set "Fanderson kaecio"
  find('#email').set "kaecio@yahoo.com.br"
  find('#password').set "123456"
  sleep 3
  click_button 'Cadastrar'
  sleep 2
end
  
Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css ".dashboard"
  sleep 3
end