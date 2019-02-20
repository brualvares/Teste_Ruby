    #language:pt
    Funcionalidade: login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    Contexto: Página principal
        Dado que eu acesso a página principal

    Cenario: Usuário deve ser autorizado

        Quando eu falo login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso
        E devo ver a seguinte mensagem "Olá, Fernando"

    Esquema do Cenário: Tentativa de login

        Quando eu falo login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos:
        |email          |senha  |alerta                     |
        |eu@papito.io   |xpto123|Senha inválida.            |
        |eu@papito.net  |xpto123|Usuário não cadastrado.    |
        |eupapito.io    |123456 |Email incorreto ou ausente.|
        |               |abcabc |Email incorreto ou ausente.|