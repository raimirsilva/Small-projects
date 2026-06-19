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
