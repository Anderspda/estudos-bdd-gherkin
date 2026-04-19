# 🚀 Projeto de Estudos: BDD com Gherkin

Este repositório foi criado para armazenar meus estudos sobre **BDD (Behavior Driven Development)** e a escrita de cenários de teste utilizando a sintaxe **Gherkin** mantendo a clareza para o negócio e a viabilidade técnica para a automação.

O objetivo principal é demonstrar a habilidade de estruturar casos de teste de forma clara, organizada e eficiente, focando na comunicação entre os times de negócio e desenvolvimento.

---

## 🧠 Decisões estratégicas de Estrutura de Testes

Durante o desenvolvimento deste projeto, apliquei conceitos avançados de engenharia de testes para garantir que os cenários sejam sustentáveis e prontos para a automação:

* **Modularização por Funcionalidade:** Os testes estão organizados em subpastas dentro do diretório `features/`. Essa estrutura facilita a manutenção e permite que o projeto cresça de forma escalável.
* **Destaque do Fluxo Principal:** Mantive os cenários de sucesso como casos únicos e fixos. Esta decisão visa criar uma "documentação viva" onde o comportamento principal do sistema é identificado instantaneamente pelo time de negócio, separando claramente o valor entregue das validações de erro.
* **Eficiência com Esquemas de Cenário:** Utilizei `Esquema do Cenário` para validar múltiplos campos e regras de negócio. Isso permite testar diversas variações de massa de dados (como campos vazios, e-mails inválidos e registros duplicados) de forma centralizada. **Classes de Equivalência em Senhas:** Em vez de tentar mapear infinitas combinações de senhas erradas, selecionei casos representativos (senhas curtas, senhas com caracteres diferentes) para validar se a lógica de rejeição do sistema está funcionando corretamente.
**Tags Estratégicas (`@`):** Implementei um sistema de etiquetas para permitir execuções seletivas e organizadas na suíte de testes:

    * `@fluxo_principal`: Identifica os testes críticos e caminhos felizes.
    * `@negativo`: Agrupa testes que validam o tratamento de erros e mensagens de alerta.
    * `@regra_de_negocio`: Marca cenários que validam comportamentos específicos de domínio do sistema.
* **Escrita Declarativa:** Os passos foram escritos focando no *comportamento* do usuário e nos resultados esperados, evitando descrições exaustivas, o que torna os testes menos sensíveis a mudanças cosméticas de UI.

---

## 🛠️ Tecnologias e Conceitos Aplicados

* **Linguagem:** Gherkin (Cucumber)
* **Idioma:** Português (`#language: pt`)
* **Padrões de Escrita:** Uso de `Contexto`, `Cenário` e `Esquema do Cenário`.
* **Convenção de Variáveis:** Adotei o padrão *snake_case* (ex: `<mensagem_de_erro>`) para nomear as variáveis nos Esquemas de Cenário. Fiz essa escolha para garantir que os testes sejam facilmente integrados a frameworks como Cypress ou Selenium, evitando erros de leitura de parâmetros.
* **Análise de Dados:** Aplicação de conceitos de Classes de Equivalência e Particionamento de Dados nas tabelas de `Exemplos`.

---

## 📂 Estrutura do Projeto

```text
├── features/
│   ├── autenticacao/
│   │   └── login.feature      # Validação de acesso e múltiplos perfis de usuário
│   └── clientes/
│       └── cadastro.feature   # Regras de negócio e validação de campos obrigatórios
└── README.md                  # Documentação estratégica e guia do projeto
```