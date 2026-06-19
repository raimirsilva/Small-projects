# 🚕 Chicago Taxi Analysis

**Chicago Taxi Market Analysis with SQL and Python**

***

## 📋 About the Project

This project was developed as part of the TripleTen Data Analytics Bootcamp. The objective is to investigate the Chicago taxi market using **SQL queries** for data extraction and preparation, followed by exploratory analysis and **statistical hypothesis testing** in Python.

The analysis examines market concentration among taxi companies, the neighbourhoods with the highest destination volume, and evaluates whether adverse weather conditions significantly impact trip duration between the Loop and O'Hare International Airport on Saturdays.

***

## 🎯 Objectives

- Identify the taxi companies with the highest number of trips and calculate each company's market share
- Map the 10 most popular destination neighbourhoods for trips
- Statistically test whether rain on Saturdays alters the average duration of Loop → O'Hare trips
- Communicate the results with clear visualisations and business-oriented conclusions

***

## 🗂️ Project Structure

### **Stage 1: Data Extraction and Preparation (SQL)**
- SQL queries to aggregate the number of trips per taxi company
- Query for average trips per destination neighbourhood (November 2017)
- Extraction of Loop → O'Hare trips on Saturdays with classified weather conditions

### **Stage 2: Market Analysis by Company**
- Ranking of the 64 taxi companies by trip volume
- Calculation of individual and cumulative market share for the top 30
- Horizontal bar chart and interactive lollipop chart (Plotly)

### **Stage 3: Most Popular Destination Neighbourhoods**
- Identification of the 10 neighbourhoods with the highest average trips as destination
- Visualisation using a vertical bar chart with Seaborn

### **Stage 4: Statistical Hypothesis Test**
- **H₀:** the average duration of Loop → O'Hare trips does not change on rainy Saturdays
- **H₁:** the average duration of Loop → O'Hare trips is different on rainy Saturdays
- Application of Welch's t-test (two independent samples, two-tailed)
- Effect size analysis and practical implications

***

## 📊 Datasets

### **Files**

| File | Records | Description |
|---------|:---------:|-----------|
| `project_sql_result_01.csv` | 64 | Trips per taxi company |
| `project_sql_result_04.csv` | 94 | Average trips per destination neighbourhood |
| `project_sql_result_07.csv` | 1,068 | Loop → O'Hare trips on Saturdays (Nov/2017) |

### **Column Descriptions**

**project_sql_result_01.csv**

| Column | Description |
|--------|-----------|
| `company_name` | Taxi company name |
| `trips_amount` | Total trips completed during the period |

**project_sql_result_04.csv**

| Column | Description |
|--------|-----------|
| `dropoff_location_name` | Destination neighbourhood name |
| `average_trips` | Daily average of trips to the neighbourhood |

**project_sql_result_07.csv**

| Column | Description |
|--------|-----------|
| `start_ts` | Trip start timestamp |
| `weather_conditions` | Weather condition: `Good` (fine) or `Bad` (rain/adverse) |
| `duration_seconds` | Trip duration in seconds |

***

## 📈 Key Results

### **Market Concentration**

| Company | Trips | Market Share |
|---------|:--------:|:------------:|
| Flash Cab | 19,558 | **14.24%** |
| Taxi Affiliation Services | 11,422 | 8.32% |
| Medallion Leasin | 10,367 | 7.55% |
| Yellow Cab | 9,888 | 7.20% |
| Taxi Affiliation Service Yellow | 9,299 | 6.77% |

- **Flash Cab** leads by a wide margin — almost **2× more trips** than the second-placed company
- The **top 10 companies** concentrate more than **70% of the market**
- The **top 30 companies** cover **98.96%** of the 137,311 total trips

### **Top 10 Destination Neighbourhoods**

| Position | Neighbourhood | Average Trips |
|:-------:|--------|:-----------------:|
| 1 | Loop | 10,727 |
| 2 | River North | 9,524 |
| 3 | Streeterville | 6,665 |
| 4 | West Loop | 5,164 |
| 5 | O'Hare | 2,547 |

The **Loop** leads by a significant margin — it is the city's main attraction hub, concentrating commercial, financial, and tourist activities.

### **Hypothesis Test — Impact of Rain on Trip Duration**

| Metric | Value |
|---------|:-----:|
| Test used | Welch's t-test (two-tailed) |
| Group: Rainy Saturdays | 2,427 s (≈ **40.5 min**) |
| Group: Fair-weather Saturdays | 2,000 s (≈ **33.3 min**) |
| Difference | **+427 s (≈ +7 min)** |
| Relative increase | **+21.4%** |
| t-statistic | 7.1860 |
| p-value | ≈ **0.0000** |
| Decision | **Reject H₀** |

There is very strong statistical evidence that rainy Saturdays increase the duration of Loop → O'Hare trips by approximately **7 minutes** (+21.4%) — a relevant impact both for passengers and for dynamic pricing.

***

## 🛠️ Technologies Used

- **SQL** — Data extraction, aggregation, and preparation
- **Pandas** — Data manipulation and analysis
- **NumPy** — Numerical operations
- **Matplotlib & Seaborn** — Static visualisations
- **Plotly** — Interactive lollipop chart for market share
- **SciPy** — Welch's t-test for statistical hypothesis testing
- **BeautifulSoup & Requests** — Web scraping of weather data
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
seaborn
plotly
scipy
beautifulsoup4
requests
```

### **Installation**

```bash
# Clone the repository
git clone https://github.com/raimirsilva/chicago-taxi-analysis.git

# Navigate to the directory
cd chicago-taxi-analysis

# Install the dependencies
pip install -r requirements.txt

# Start the Jupyter Notebook
jupyter notebook
```

### **Running**

Make sure the files `project_sql_result_01.csv`, `project_sql_result_04.csv`, and `project_sql_result_07.csv` are in the same directory as the notebook. Then open `Chicago_new_company_analysis.ipynb` and run the cells sequentially.

***

## 🎓 Learnings

This project demonstrates competencies in:

- **SQL queries** for relational data extraction and aggregation
- **Market concentration analysis** with market share calculation and competitive ranking
- **Interactive visualisation** with Plotly (lollipop chart) and static with Seaborn
- **Hypothesis formulation and testing** — defining H₀/H₁, choosing the appropriate test, and interpreting the p-value
- **Welch's test** — robust variant of the t-test when variances are unequal
- **Translation of statistical results into business insights** — from the t-statistic to the practical impact in travel minutes

***

## 👤 Author

**Raimir Silva**

- GitHub: [@raimirsilva](https://github.com/raimirsilva)
- LinkedIn: [Raimir Silva](https://linkedin.com/in/raimir-silva)
- Email: raimirsilva@icloud.com

***

## 📄 Licence

This project was developed as part of the **TripleTen Data Analytics** Bootcamp for educational and portfolio purposes.

***

**⭐ If this project was useful to you, consider giving the repository a star!**

---

# 🚕 Chicago Taxi Analysis

**Análise de Mercado de Táxi em Chicago com SQL e Python**

***

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do bootcamp TripleTen de Data Analytics. O objetivo é investigar o mercado de táxi em Chicago utilizando **consultas SQL** para extração e preparação dos dados, seguidas de análise exploratória e **teste de hipótese estatístico** em Python.

A análise examina a concentração de mercado entre empresas de táxi, os bairros com maior volume de destino, e avalia se condições climáticas adversas impactam significativamente a duração das corridas entre o Loop e o Aeroporto Internacional de O'Hare em sábados.

***

## 🎯 Objetivos

- Identificar as empresas de táxi com maior número de corridas e calcular o market share de cada uma
- Mapear os 10 bairros mais populares como destino das corridas
- Testar estatisticamente se a chuva em sábados altera a duração média das viagens Loop → O'Hare
- Comunicar os resultados com visualizações claras e conclusões orientadas ao negócio

***

## 🗂️ Estrutura do Projeto

### **Etapa 1: Extração e Preparação dos Dados (SQL)**
- Consultas SQL para agregar o número de corridas por empresa de táxi
- Consulta de média de corridas por bairro de destino (novembro de 2017)
- Extração de corridas Loop → O'Hare em sábados com condições climáticas classificadas

### **Etapa 2: Análise de Mercado por Empresa**
- Ranking das 64 empresas de táxi por volume de corridas
- Cálculo de market share individual e acumulado para as top 30
- Gráfico de barras horizontais e lollipop chart interativo (Plotly)

### **Etapa 3: Bairros Mais Populares como Destino**
- Identificação dos 10 bairros com maior média de corridas como destino
- Visualização em gráfico de barras verticais com Seaborn

### **Etapa 4: Teste de Hipótese Estatístico**
- **H₀:** a duração média das viagens Loop → O'Hare não muda nos sábados chuvosos
- **H₁:** a duração média das viagens Loop → O'Hare é diferente nos sábados chuvosos
- Aplicação do teste t de Welch (duas amostras independentes, bilateral)
- Análise da magnitude do efeito e implicações práticas

***

## 📊 Datasets

### **Arquivos**

| Arquivo | Registros | Descrição |
|---------|:---------:|-----------|
| `project_sql_result_01.csv` | 64 | Corridas por empresa de táxi |
| `project_sql_result_04.csv` | 94 | Média de corridas por bairro de destino |
| `project_sql_result_07.csv` | 1.068 | Corridas Loop → O'Hare em sábados (nov/2017) |

### **Descrição das Colunas**

**project_sql_result_01.csv**

| Coluna | Descrição |
|--------|-----------|
| `company_name` | Nome da empresa de táxi |
| `trips_amount` | Total de corridas realizadas no período |

**project_sql_result_04.csv**

| Coluna | Descrição |
|--------|-----------|
| `dropoff_location_name` | Nome do bairro de destino |
| `average_trips` | Média diária de corridas com destino ao bairro |

**project_sql_result_07.csv**

| Coluna | Descrição |
|--------|-----------|
| `start_ts` | Timestamp de início da corrida |
| `weather_conditions` | Condição climática: `Good` (bom) ou `Bad` (chuva/adverso) |
| `duration_seconds` | Duração da corrida em segundos |

***

## 📈 Principais Resultados

### **Concentração de Mercado**

| Empresa | Corridas | Market Share |
|---------|:--------:|:------------:|
| Flash Cab | 19.558 | **14,24%** |
| Taxi Affiliation Services | 11.422 | 8,32% |
| Medallion Leasin | 10.367 | 7,55% |
| Yellow Cab | 9.888 | 7,20% |
| Taxi Affiliation Service Yellow | 9.299 | 6,77% |

- **Flash Cab** lidera com folga — quase **2× mais corridas** que a segunda colocada
- As **top 10 empresas** concentram mais de **70% do mercado**
- As **top 30 empresas** cobrem **98,96%** das 137.311 corridas totais

### **Top 10 Bairros de Destino**

| Posição | Bairro | Média de Corridas |
|:-------:|--------|:-----------------:|
| 1 | Loop | 10.727 |
| 2 | River North | 9.524 |
| 3 | Streeterville | 6.665 |
| 4 | West Loop | 5.164 |
| 5 | O'Hare | 2.547 |

O **Loop** lidera com expressiva vantagem — é o principal polo de atração da cidade, concentrando atividades comerciais, financeiras e turísticas.

### **Teste de Hipótese — Impacto da Chuva na Duração das Corridas**

| Métrica | Valor |
|---------|:-----:|
| Teste utilizado | Welch's t-test (bilateral) |
| Grupo: Sábados chuvosos | 2.427 s (≈ **40,5 min**) |
| Grupo: Sábados com bom tempo | 2.000 s (≈ **33,3 min**) |
| Diferença | **+427 s (≈ +7 min)** |
| Aumento relativo | **+21,4%** |
| t-estatístico | 7,1860 |
| p-valor | ≈ **0,0000** |
| Decisão | **Rejeitar H₀** |

Há evidência estatística muito forte de que sábados chuvosos aumentam a duração das corridas Loop → O'Hare em aproximadamente **7 minutos** (+21,4%) — impacto relevante tanto para passageiros quanto para precificação dinâmica.

***

## 🛠️ Tecnologias Utilizadas

- **SQL** — Extração, agregação e preparação dos dados
- **Pandas** — Manipulação e análise de dados
- **NumPy** — Operações numéricas
- **Matplotlib & Seaborn** — Visualizações estáticas
- **Plotly** — Gráfico lollipop interativo de market share
- **SciPy** — Teste t de Welch para hipótese estatística
- **BeautifulSoup & Requests** — Web scraping de dados climáticos
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
seaborn
plotly
scipy
beautifulsoup4
requests
```

### **Instalação**

```bash
# Clone o repositório
git clone https://github.com/raimirsilva/chicago-taxi-analysis.git

# Navegue até o diretório
cd chicago-taxi-analysis

# Instale as dependências
pip install -r requirements.txt

# Inicie o Jupyter Notebook
jupyter notebook
```

### **Execução**

Certifique-se de que os arquivos `project_sql_result_01.csv`, `project_sql_result_04.csv` e `project_sql_result_07.csv` estejam no mesmo diretório que o notebook. Em seguida, abra `Chicago_new_company_analysis.ipynb` e execute as células sequencialmente.

***

## 🎓 Aprendizados

Este projeto demonstra competências em:

- **Consultas SQL** para extração e agregação de dados relacionais
- **Análise de concentração de mercado** com cálculo de market share e ranking competitivo
- **Visualização interativa** com Plotly (lollipop chart) e estática com Seaborn
- **Formulação e teste de hipóteses** — definição de H₀/H₁, escolha do teste adequado e interpretação do p-valor
- **Teste de Welch** — variante robusta do teste t quando variâncias são desiguais
- **Tradução de resultados estatísticos em insights de negócio** — da estatística t ao impacto prático em minutos de viagem

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
