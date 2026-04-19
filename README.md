# 🚀 Projeto de Estudos: BDD com Gherkin

Este repositório foi criado para armazenar meus estudos sobre **BDD (Behavior Driven Development)** e a escrita de cenários de teste utilizando a sintaxe **Gherkin**. 

O objetivo principal é demonstrar a habilidade de estruturar casos de teste de forma clara, organizada e eficiente, focando na comunicação entre os times de negócio e desenvolvimento.

---

## 🧠 Decisões de Estrutura de Testes

Durante o desenvolvimento deste projeto, algumas escolhas estratégicas foram feitas para garantir a qualidade e a manutenibilidade dos testes:

* **Separação do Caminho Feliz:** O cenário de "Autenticação Válida" foi mantido como um cenário único e fixo. Isso serve para destacar o comportamento principal de sucesso do sistema, facilitando a leitura rápida do requisito de negócio.
* **Uso de Esquemas para Massa de Dados:** Para as validações de erro (usuário inexistente e senha incorreta), utilizei o `Esquema do Cenário`. Esta decisão foi tomada para evitar a repetição de código e permitir que múltiplas variações de dados sejam testadas de forma centralizada.
* **Classes de Equivalência em Senhas:** Em vez de tentar mapear infinitas combinações de senhas erradas, selecionei casos representativos (senhas curtas, senhas com caracteres diferentes) para validar se a lógica de rejeição do sistema está funcionando corretamente.
* **Múltiplos Perfis de Acesso:** Implementei um esquema específico para "Múltiplos Usuários", simulando diferentes perfis (como Anderson, João e Maria). Isso demonstra como a automação pode validar diversos níveis de acesso em um único bloco de teste.

---

## 🛠️ Tecnologias e Conceitos Aplicados

* **Linguagem:** Gherkin (Cucumber).
* **Idioma:** Português (`#language: pt`).
* **Padrões de Escrita:** Uso de `Contexto`, `Cenário` e `Esquema do Cenário`.
* **Análise de Dados:** Aplicação de Classes de Equivalência e Particionamento de Dados nas tabelas de Exemplos.

---

## 📂 Estrutura do Projeto

├── features/
│   ├── autenticacao/
│   │   └── login.feature      # Validação de acesso e múltiplos perfis
│   └── clientes/
│       └── cadastro.feature   # Regras de negócio complexas e validação de campos
└── README.md                  # Documentação estratégica