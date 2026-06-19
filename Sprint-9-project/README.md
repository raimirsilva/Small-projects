# 🧪 A/B Test Analysis — E-commerce

**Hypothesis Prioritisation and Statistical Analysis of an A/B Test**

***

## 📋 About the Project

This project was developed as part of the TripleTen Data Analytics bootcamp. The goal is to prioritise improvement hypotheses for an e-commerce business using the **ICE** and **RICE** frameworks, and then to analyse the results of an A/B test with statistical rigour — identifying which variant should be adopted and with what level of confidence.

The analysis starts from 9 business hypotheses and real order and visit data spanning August 2019 (Group A = control, Group B = test), culminating in a formal decision to stop the experiment.

***

## 🎯 Objectives

- Apply the ICE and RICE frameworks to prioritise e-commerce improvement hypotheses
- Compare the rankings and identify how Reach changes the priorities
- Analyse cumulative metrics over the experiment: revenue, average order value, and conversion
- Detect and filter anomalies (outliers in number of orders and in revenue per order)
- Apply statistical tests appropriate to the data distribution
- Make an evidence-based decision on whether to stop or continue the test

***

## 🗂️ Project Structure

### **Stage 1: Hypothesis Prioritisation**
- Loading the `hypotheses_us.csv` dataset with 9 hypotheses scored on Reach, Impact, Confidence, and Effort
- Computing the **ICE** score = Impact × Confidence / Effort
- Computing the **RICE** score = Reach × Impact × Confidence / Effort
- Comparing the two rankings and analysing the position changes

### **Stage 2: Exploratory Analysis of the A/B Test**
- Cumulative revenue per group over time
- Cumulative average order value (revenue / number of orders)
- Relative difference in cumulative average order value (B vs. A)
- Daily conversion rate per group (orders / visits)
- Relative difference in cumulative conversion (B vs. A)

### **Stage 3: Anomaly Detection and Filtering**
- Identifying users with a number of orders above the 99th percentile (> 4 orders)
- Scatter plot of order values per group
- Identifying orders with revenue above the 99th percentile (> $900.90)
- Filtering the raw data to create the clean dataset

### **Stage 4: Statistical Tests**
- Normality check with Shapiro-Wilk (rationale for using Mann-Whitney U)
- **Conversion:** Two-proportion z-test — raw and filtered data
- **Average order value:** Mann-Whitney U (non-parametric) — raw and filtered data
- Applying the **Bonferroni correction** (α/k = 0.025) for multiple comparisons

### **Stage 5: Final Decision**
- Synthesis of the results with and without outlier filtering
- Evidence-based decision to stop the test and adopt variant B

***

## 📊 Datasets

### **Files**

| File | Records | Description |
|---------|:---------:|-----------|
| `hypotheses_us.csv` | 9 | Improvement hypotheses with ICE/RICE scores |
| `orders_us.csv` | 1,197 | Transactions over the experiment period |
| `visits_us.csv` | 62 | Daily visits per group (A and B) |

### **Column Descriptions**

**hypotheses_us.csv**

| Column | Description |
|--------|-----------|
| `Hypothesis` | Description of the hypothesis |
| `Reach` | Estimated reach (1–10) |
| `Impact` | Expected impact (1–10) |
| `Confidence` | Confidence in the hypothesis (1–10) |
| `Effort` | Implementation effort (1–10) |

**orders_us.csv**

| Column | Description |
|--------|-----------|
| `transactionId` | Unique order identifier |
| `visitorId` | Visitor identifier |
| `date` | Transaction date |
| `revenue` | Order value ($) |
| `group` | Experiment group: A (control) or B (test) |

**visits_us.csv**

| Column | Description |
|--------|-----------|
| `date` | Record date |
| `group` | Experiment group: A or B |
| `visits` | Total visits on that day |

***

## 📈 Key Results

### **Hypothesis Prioritisation**

| Hypothesis | Reach | ICE rank | RICE rank | Movement |
|----------|:-----:|:--------:|:---------:|:---------:|
| Add a subscription form to all main pages | 10 | 3rd | **1st** | ↑ 2 pos. |
| Add product recommendation blocks | 8 | 5th | **2nd** | ↑ 3 pos. |
| Launch a promotion (birthday discounts) | 1 | 1st | 5th | ↓ 4 pos. |
| Change the category structure | 8 | 8th | 6th | ↑ 2 pos. |

RICE repositioned high-Reach hypotheses (such as the subscription form) and penalised low-Reach ones (such as the birthday promotion), revealing that ICE on its own can prioritise initiatives of limited impact.

### **Statistical Tests**

| Metric | Raw Data | Filtered Data | Sig. (α=0.05)? | Sig. (α_Bonf=0.025)? |
|---------|:------------:|:---------------:|:--------------:|:--------------------:|
| Conversion B vs A | +15.4% (p=0.0167) | **+16.4% (p=0.0126)** | **Yes** | **Yes** |
| Average order value B vs A | +25.2% (p=0.6915) | -1.5% (p=0.9332) | No | No |

### **Decision: Stop the test — Group B is the winner**

- Group B's conversion rate is **+16.4% higher** than Group A's (3.02% vs 2.59%), with p = 0.0126 — a significant result even after the Bonferroni correction
- The +25.2% difference in average order value in the raw data **disappears completely** after outlier filtering (-1.5%, p = 0.93) — it was sampling noise
- Group B's conversion advantage stayed positive and stable from ~09/08 and persisted to the end of the experiment
- With more than 18,000 visits per group and 31 days of collection, the sample size is sufficient to stop

***

## 🛠️ Technologies Used

- **Pandas** — Data manipulation and analysis
- **NumPy** — Numerical operations and percentile computation
- **Matplotlib** — Data visualisation and time-series charts
- **SciPy** — Shapiro-Wilk and Mann-Whitney U tests
- **Statsmodels** — Two-proportion z-test
- **Jupyter Notebook** — Interactive development and documentation

***

## 🚀 How to Run

### **Prerequisites**

```
python >= 3.8
jupyter notebook
pandas
numpy
matplotlib
scipy
statsmodels
```

### **Installation**

```bash
# Clone the repository
git clone https://github.com/raimirsilva/ab-test-analysis.git

# Go to the directory
cd ab-test-analysis

# Install dependencies
pip install -r requirements.txt

# Start Jupyter Notebook
jupyter notebook
```

### **Execution**

Make sure the files `hypotheses_us.csv`, `orders_us.csv`, and `visits_us.csv` are in `../data/` relative to the notebook, or adjust the paths in the reading cell. Then open `ABtests.ipynb` and run the cells in sequence.

***

## 🎓 Key Takeaways

This project demonstrates competencies in:

- **Strategic prioritisation** with the ICE and RICE frameworks — and how the Reach factor changes product decisions
- **Time-series analysis** of business metrics (cumulative revenue, conversion, average order value)
- **Anomaly detection** via percentiles and visual dispersion — and how outliers distort conclusions
- **Selection of statistical tests** appropriate to the data distribution (normality check, Mann-Whitney U)
- **Type I error control** with the Bonferroni correction across multiple comparisons
- **Data storytelling** — separating the real effect (conversion) from the noise (average order value inflated by outliers)

***

## 👤 Author

**Raimir Silva**

- GitHub: [@raimirsilva](https://github.com/raimirsilva)
- LinkedIn: [Raimir Silva](https://linkedin.com/in/raimir-silva)
- Email: raimirsilva@icloud.com

***

## 📄 Licence

This project was developed as part of the **TripleTen Data Analytics** bootcamp for educational and portfolio purposes.

***

**⭐ If this project was useful to you, consider giving the repository a star!**

<br>

***
***

<br>

***

# 🧪 A/B Test Analysis — E-commerce

**Priorização de Hipóteses e Análise Estatística de Teste A/B**

***

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do bootcamp TripleTen de Data Analytics. O objetivo é priorizar hipóteses de melhoria para um e-commerce usando os frameworks **ICE** e **RICE**, e então analisar os resultados de um teste A/B com rigor estatístico — identificando qual variante deve ser adotada e com qual grau de confiança.

A análise parte de 9 hipóteses de negócio e dados reais de pedidos e visitas ao longo de agosto de 2019 (Grupo A = controle, Grupo B = teste), culminando em uma decisão formal de encerramento do experimento.

***

## 🎯 Objetivos

- Aplicar os frameworks ICE e RICE para priorizar hipóteses de melhoria do e-commerce
- Comparar os rankings e identificar como o alcance (Reach) altera as prioridades
- Analisar métricas acumuladas ao longo do experimento: receita, ticket médio e conversão
- Detectar e filtrar anomalias (outliers de pedidos e de receita por pedido)
- Aplicar testes estatísticos adequados à distribuição dos dados
- Tomar uma decisão fundamentada sobre encerrar ou continuar o teste

***

## 🗂️ Estrutura do Projeto

### **Etapa 1: Priorização de Hipóteses**
- Carregamento do dataset `hypotheses_us.csv` com 9 hipóteses avaliadas por Reach, Impact, Confidence e Effort
- Cálculo do score **ICE** = Impact × Confidence / Effort
- Cálculo do score **RICE** = Reach × Impact × Confidence / Effort
- Comparação entre os dois rankings e análise das mudanças de posição

### **Etapa 2: Análise Exploratória do Teste A/B**
- Receita acumulada por grupo ao longo do tempo
- Ticket médio acumulado (receita / número de pedidos)
- Diferença relativa no ticket médio acumulado (B vs. A)
- Taxa de conversão diária por grupo (pedidos / visitas)
- Diferença relativa na conversão acumulada (B vs. A)

### **Etapa 3: Detecção e Filtragem de Anomalias**
- Identificação de usuários com número de pedidos acima do percentil 99 (> 4 pedidos)
- Gráfico de dispersão de valores de pedidos por grupo
- Identificação de pedidos com receita acima do percentil 99 (> $900,90)
- Filtragem dos dados brutos para criação do dataset limpo

### **Etapa 4: Testes Estatísticos**
- Verificação de normalidade com Shapiro-Wilk (justificativa para uso de Mann-Whitney U)
- **Conversão:** Teste z de duas proporções — dados brutos e filtrados
- **Ticket médio:** Mann-Whitney U (não-paramétrico) — dados brutos e filtrados
- Aplicação da **Correção de Bonferroni** (α/k = 0,025) para múltiplas comparações

### **Etapa 5: Decisão Final**
- Síntese dos resultados com e sem filtragem de outliers
- Decisão fundamentada sobre encerrar o teste e adotar a variante B

***

## 📊 Datasets

### **Arquivos**

| Arquivo | Registros | Descrição |
|---------|:---------:|-----------|
| `hypotheses_us.csv` | 9 | Hipóteses de melhoria com scores ICE/RICE |
| `orders_us.csv` | 1.197 | Transações do período do experimento |
| `visits_us.csv` | 62 | Visitas diárias por grupo (A e B) |

### **Descrição das Colunas**

**hypotheses_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `Hypothesis` | Descrição da hipótese |
| `Reach` | Alcance estimado (1–10) |
| `Impact` | Impacto esperado (1–10) |
| `Confidence` | Confiança na hipótese (1–10) |
| `Effort` | Esforço de implementação (1–10) |

**orders_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `transactionId` | Identificador único do pedido |
| `visitorId` | Identificador do visitante |
| `date` | Data da transação |
| `revenue` | Valor do pedido ($) |
| `group` | Grupo do experimento: A (controle) ou B (teste) |

**visits_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `date` | Data do registro |
| `group` | Grupo do experimento: A ou B |
| `visits` | Total de visitas naquele dia |

***

## 📈 Principais Resultados

### **Priorização de Hipóteses**

| Hipótese | Reach | ICE rank | RICE rank | Movimento |
|----------|:-----:|:--------:|:---------:|:---------:|
| Add a subscription form to all main pages | 10 | 3º | **1º** | ↑ 2 pos. |
| Add product recommendation blocks | 8 | 5º | **2º** | ↑ 3 pos. |
| Launch a promotion (birthday discounts) | 1 | 1º | 5º | ↓ 4 pos. |
| Change the category structure | 8 | 8º | 6º | ↑ 2 pos. |

O RICE reposicionou hipóteses com alto Reach (como o formulário de inscrição) e penalizou hipóteses com Reach baixo (como a promoção de aniversário), revelando que o ICE sozinho pode priorizar iniciativas de impacto limitado.

### **Testes Estatísticos**

| Métrica | Dados Brutos | Dados Filtrados | Sig. (α=0,05)? | Sig. (α_Bonf=0,025)? |
|---------|:------------:|:---------------:|:--------------:|:--------------------:|
| Conversão B vs A | +15,4% (p=0,0167) | **+16,4% (p=0,0126)** | **Sim** | **Sim** |
| Ticket médio B vs A | +25,2% (p=0,6915) | -1,5% (p=0,9332) | Não | Não |

### **Decisão: Encerrar o teste — Grupo B é o vencedor**

- A taxa de conversão do Grupo B é **+16,4% superior** à do Grupo A (3,02% vs 2,59%), com p = 0,0126 — resultado significativo mesmo após correção de Bonferroni
- A diferença no ticket médio de +25,2% nos dados brutos **desaparece completamente** após filtragem de outliers (-1,5%, p = 0,93) — era ruído amostral
- A vantagem de conversão se manteve positiva e estável a partir de ~09/08 e persistiu até o final do experimento
- Com mais de 18.000 visitas por grupo e 31 dias de coleta, o tamanho amostral é suficiente para encerrar

***

## 🛠️ Tecnologias Utilizadas

- **Pandas** — Manipulação e análise de dados
- **NumPy** — Operações numéricas e cálculo de percentis
- **Matplotlib** — Visualização de dados e gráficos de séries temporais
- **SciPy** — Teste de Shapiro-Wilk e Mann-Whitney U
- **Statsmodels** — Teste z de duas proporções
- **Jupyter Notebook** — Desenvolvimento e documentação interativa

***

## 🚀 Como Executar

### **Pré-requisitos**

```
python >= 3.8
jupyter notebook
pandas
numpy
matplotlib
scipy
statsmodels
```

### **Instalação**

```bash
# Clone o repositório
git clone https://github.com/raimirsilva/ab-test-analysis.git

# Navegue até o diretório
cd ab-test-analysis

# Instale as dependências
pip install -r requirements.txt

# Inicie o Jupyter Notebook
jupyter notebook
```

### **Execução**

Certifique-se de que os arquivos `hypotheses_us.csv`, `orders_us.csv` e `visits_us.csv` estejam em `../data/` em relação ao notebook, ou ajuste os caminhos na célula de leitura. Em seguida, abra `ABtests.ipynb` e execute as células sequencialmente.

***

## 🎓 Aprendizados

Este projeto demonstra competências em:

- **Priorização estratégica** com frameworks ICE e RICE — e como o fator Reach altera decisões de produto
- **Análise de séries temporais** de métricas de negócio (receita, conversão, ticket médio acumulados)
- **Detecção de anomalias** via percentis e dispersão visual — e como outliers distorcem conclusões
- **Seleção de testes estatísticos** adequados à distribuição dos dados (verificação de normalidade, Mann-Whitney U)
- **Controle de erro Tipo I** com correção de Bonferroni em múltiplas comparações
- **Storytelling com dados** — separar o efeito real (conversão) do ruído (ticket médio inflado por outliers)

***

## 👤 Autor

**Raimir Silva**

- GitHub: [@raimirsilva](https://github.com/raimirsilva)
- LinkedIn: [Raimir Silva](https://linkedin.com/in/raimir-silva)
- Email: raimirsilva@icloud.com

***

## 📄 Licença

Este projeto foi desenvolvido como parte do bootcamp **TripleTen Data Analytics** para fins educacionais e de portfólio.

***

**⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!**
