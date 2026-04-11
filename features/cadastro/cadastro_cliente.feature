            #language: pt
            Funcionalidade: Cadastro de cliente
            Como um usuário do sistema
            Eu quero cadastrar um cliente
            Para que eu possa ter os dados do cliente registrados no sistema

            Contexto: Cadastro de cliente
            Dado que o usuário está na página de cadastro de cliente

            #cenario feliz

            Cenário: Cadastro de cliente com dados válidos
            Quando o usuário preenche os campos obrigatórios com dados válidos
            E clica no botão "Cadastrar"
            Então o cliente é cadastrado com sucesso

            #esquemas de cenários

            Esquema do cenário: Cadastro de cliente com dados inválidos
            Quando o usuário preenche os "<campo>" com "<valor>"
            E clica no botão "Cadastrar"
            Então deve ser exibida a mensagem de erro "<mensagem de erro>"

            Exemplos:
            | campo | valor    | mensagem de erro      |
            | nome  |          | O nome é obrigatório  |
            | email |          | O email é obrigatório |
            | email | invalido | O email é inválido    |

            Esquema do cenário: Cadastro de cliente com email já cadastrado
            Quando o usuário preenche os campos obrigatórios com dados válidos
            E informa o e-mail "<email_existente>"
            E clica no botão "Cadastrar"
            Então deve ser exibida a mensagem de erro "O email já está cadastrado"

            Exemplos:
            | email_existente    |
            | anders@qabc.com.br |
            | admin@qabc.com.br  |
            | aluno@qabc.com.br  |