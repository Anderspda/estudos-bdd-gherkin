            #language: pt

            Funcionalidade: Tela de login
            Como aluno do portal QABC,
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse a página de autenticação do portal EBAC
            
            #cenario feliz

            @fluxo_principal @sucesso
            Cenário:Autenticação válida
            Quando eu digitar o usuário "anderson@qabc.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá Anderson!"

            #Esquemas de Cenário

            @negativo @regra_de_negocio
            Esquema do Cenário: Validar usuários inválidos
            Quando eu digitar o usuário "<usuario-invalido>"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Exemplos:
            | usuario-invalido     |
            | andersom@qabc.com.br |
            | anderson@qabc.com    |

            @negativo @regra_de_negocio
            Esquema do Cenário: Validar senhas incorretas
            Quando eu digitar o usuário "anderson@qabc.com.br"
            E a senha "<senha-errada>"
            Então deve exibir uma mensagem de alerta: "Senha incorreta"

            Exemplos:
            | senha-errada |
            | senha@456    |
            | senha@1234   |
            | senha@12     |
            | senha123     |

            @fluxo_principal @sucesso
            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o usuário "<usuario>"
            E a senha "<senha>"
            Então deve exibir a mensagem de boas vindas "<mensagem>"

            Exemplos:
            | usuario              | senha     | mensagem      |
            | anderson@qabc.com.br | senha@123 | Olá Anderson! |
            | joao@qabc.com.br     | teste@456 | Olá João!     |
            | maria@qabc.com.br    | maria!789 | Olá Maria!    |