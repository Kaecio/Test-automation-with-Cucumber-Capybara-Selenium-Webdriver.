Dado('que acesso a página de cadastro') do
  visit 'http://rocklov-web:3000/signup'
end

Quando('submeto o seguinte formulario de cadastro:') do |table|
  log table.hashes
  user = table.hashes.first
  log user

  MongoDB.new.user_remove(user[:email])
  
  find('#fullName').set user[:nome]
  find('#email').set user[:email]
  find('#password').set user[:senha]
  click_button 'Cadastrar'
end
  
Então('sou redirecionado para o Dashboard') do
  expect(page).to have_css ".dashboard"
end

Então('vejo a mensagem de alerta: {string}') do |expect_alert|
  alert = find('.alert-dark')
  expect(alert.text).to eql expect_alert
end