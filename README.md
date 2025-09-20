# 🧠 Análise da Saúde Mental de Estudantes Internacionais (SQL)

## 🎯 Objetivo

Este projeto tem como objetivo investigar **como o tempo de permanência no país (em anos)** influencia os indicadores de saúde mental de **estudantes internacionais**.  

A análise foi feita a partir de **dados reais de um estudo acadêmico** sobre estudantes que vivenciam processos de adaptação cultural em universidades.

---

## 📊 Fonte dos Dados

Os dados utilizados provêm de um estudo científico sobre saúde mental de estudantes internacionais, incluindo variáveis como:

- `stay`: tempo de permanência no país (em anos)  
- `todep`: escore de depressão (PHQ-9 test)  
- `tosc`: escore de conexão social (SCS test)  
- `toas`: escore de estresse de aculturação (ASISS test)  
- Outras variáveis (proficiência em línguas, idade, nível acadêmico etc.)  

⚠️ Por questões de privacidade, os dados disponibilizados são **anonimizados** e focados apenas nas métricas relevantes para o estudo.

---

## ⚙️ Metodologia

1. **Filtragem:** foram considerados apenas estudantes internacionais (`inter_dom = 'Inter'`).  
2. **Agrupamento:** os resultados foram agrupados pelo tempo de permanência (`stay`).  
3. **Cálculos:** para cada grupo foram obtidos:  
   - Quantidade de estudantes (`COUNT(*)`)  
   - Média de depressão (`AVG(todep)`)  
   - Média de conexão social (`AVG(tosc)`)  
   - Média de estresse de aculturação (`AVG(toas)`)  
4. **Ordenação:** os grupos foram ordenados em ordem decrescente de tempo de permanência.

---

## 📝 Principais Resultados

- O **1º ano de permanência** concentra o maior número de estudantes (95) e apresenta **alto estresse de aculturação** (72,8).  
- Entre **2 e 4 anos**, observa-se que o estresse continua elevado (77–87), sugerindo um período crítico de adaptação.  
- Grupos com **mais de 5 anos de permanência** apresentam amostras pequenas (1 a 3 alunos), mas indicam oscilações nos escores de saúde mental.  

---

## 📌 Conclusões

- O início da experiência internacional é o período **mais desafiador**, especialmente em termos de estresse de adaptação cultural.  
- A depressão apresenta médias moderadas em todos os grupos, mas não tão altas quanto o estresse de aculturação.  
- Programas de **apoio social e psicológico voltados ao primeiro ano** podem ser fundamentais para reduzir as dificuldades de adaptação.  

---

## 📂 Estrutura do Projeto

```text
mental-health-international-students-sql/
│
├── data/
│   ├── raw/
│   │   └── students_raw.csv     # dados brutos originais
│   └── results.csv              # resultados processados
│
├── query.sql                    # código SQL da análise
├── results.png                  # print do resultado final
└── README.md                    # documentação do projeto
```

> ℹ️ No GitHub os arquivos aparecem em ordem alfabética,  
> mas aqui estão organizados de forma **lógica** para melhor entendimento.

---

## 🔗 Arquivos Importantes

- 📑 [Query SQL](./query.sql)

- 📊 [Tabela final (results.csv)](./data/results.csv)

- 🖼️ [Print da saída (results.png)](./results.png)

- 📂 [Dados brutos (students_raw.csv)](./data/raw/students_raw.csv)

---

## 🚀 Próximos Passos

- 🔍 Incluir análises adicionais cruzando variáveis (ex.: idade, proficiência em idiomas e nível acadêmico).  
- 📊 Explorar visualizações gráficas (Python/Power BI) para complementar os resultados numéricos.  
- 📈 Comparar estudantes internacionais com estudantes locais para investigar diferenças de adaptação.  
- 🛠️ Automatizar a análise em SQL + Python, criando um pipeline reprodutível.  
- 🌍 Produzir versão em inglês do README para aumentar o alcance internacional do portfólio.
