#language: pt

Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @cadastro
    Cenario: Fazer cadastro
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            |nome            |email              |senha|
            |Fanderson kaecio|kaecio@yahoo.com.br| 123456|
        Então sou redirecionado para o Dashboard

    @try_registration
    Cenario: Submeter cadastro sem o nome
        Dado que acesso a página de cadastro
         Quando submeto o seguinte formulario de cadastro:
            |nome            |email              |senha|
            |                |kaecio@yahoo.com.br| 123456|
        Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

    @try_registration
    Cenario: Submeter cadastro sem o email
        Dado que acesso a página de cadastro
         Quando submeto o seguinte formulario de cadastro:
            |nome            |email              |senha|
            |Fanderson kaecio|                   | 123456|
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @try_registration
    Cenario: Submeter cadastro com email incorreto
        Dado que acesso a página de cadastro
         Quando submeto o seguinte formulario de cadastro:
            |nome            |email              |senha|
            |Fanderson kaecio|kaecio$yahoo.com.br| 123456|
        Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    @try_registration
    Cenario: Submeter cadastro sem a senha
        Dado que acesso a página de cadastro
         Quando submeto o seguinte formulario de cadastro:
            |nome            |email              |senha|
            |Fanderson kaecio|kaecio@yahoo.com.br|      |
        Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"
