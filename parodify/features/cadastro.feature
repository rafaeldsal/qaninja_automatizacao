#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | rafael@gmail.com |
            | senha          | pwd123           |
            | senha_confirma | pwd123           |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentataiva de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>            |
            | senha          | <senha>            |
            | senha_confirma | <senha_confirmada> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email            | senha  | senha_confirmada | mensagem_saida                       |
            |                  | pwd123 | pwd123           | Oops! Informe seu email.             |
            | rafael@gmail.com |        |                  | Oops! Informe sua senha.             |
            | rafael@gmail.com | pwd123 | abc123           | Oops! Senhas não são iguais.         |
            |                  |        |                  | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email

        Quando acesso a pagina de cadastro
        Entao deve exibir o seguinte CSS: "input[type=email]"

