# 🏋️ Gym Churn Prediction

**Predicting Customer Churn in a Gym Chain with Machine Learning**

***

## 📋 About the Project

This project was developed as part of the TripleTen Data Analytics bootcamp. The goal is to identify customers at risk of cancellation (churn) in an American gym chain, combining **exploratory data analysis**, **binary classification models**, and **segmentation via clustering**.

The analysis starts from a dataset of 4,000 customers with 14 behavioural and contractual features, and delivers both a predictive model and segment profiles with concrete retention recommendations.

***

## 🎯 Objectives

- Understand the profile of customers who cancel vs. those who stay
- Identify the variables with the greatest predictive power over churn
- Build and compare binary classification models (Logistic Regression and Random Forest)
- Segment the customer base into homogeneous groups with K-Means
- Propose data-driven retention strategies for each segment

***

## 🗂️ Project Structure

### **Stage 1: Loading and Initial Exploration**
- Importing the `gym_churn_us.csv` dataset
- Analysing the data structure (types, nulls, duplicates)
- Descriptive statistics and identification of class imbalance (~26.5% churn)

### **Stage 2: Group Analysis**
- Comparing means between customers who stayed (Churn=0) and those who left (Churn=1)
- Identifying the factors most associated with churn

### **Stage 3: Distributions and Histograms**
- Visual analysis of 6 key variables by churn group
- Identifying patterns: contract, frequency, lifetime, additional spending

### **Stage 4: Correlation Analysis**
- Pearson correlation matrix with a heatmap
- Ranking of correlation with the target variable `Churn`
- Detecting multicollinearity between features

### **Stage 5: Binary Classification Models**
- Train/test split (80/20), normalisation with `StandardScaler`
- **Model 1:** Logistic Regression — linear baseline, highly interpretable
- **Model 2:** Random Forest — ensemble of 100 decision trees
- Comparison of accuracy, precision, and recall (sensitivity)

### **Stage 6: K-Means Clustering**
- Standardising the data and analysing a hierarchical dendrogram
- Segmentation into 5 clusters with K-Means
- Analysis of mean profiles and churn rate per group

### **Stage 7: Conclusions and Recommendations**
- Synthesis of the critical retention factors
- Personalised marketing strategies per segment

***

## 📊 Dataset

### **File**
`gym_churn_us.csv`

### **Column Descriptions**

| Column | Description |
|--------|-----------|
| `gender` | Customer gender (binary) |
| `Near_Location` | Lives near the gym (1 = yes) |
| `Partner` | Came via a partner company (1 = yes) |
| `Promo_friends` | Referred by a friend (1 = yes) |
| `Phone` | Provided a contact phone (1 = yes) |
| `Contract_period` | Contract length in months (1, 6, or 12) |
| `Group_visits` | Takes part in group classes (1 = yes) |
| `Age` | Customer age |
| `Avg_additional_charges_total` | Average spend on additional services ($) |
| `Month_to_end_contract` | Months remaining on the contract |
| `Lifetime` | Time as a customer (months) |
| `Avg_class_frequency_total` | Average visit frequency (total) |
| `Avg_class_frequency_current_month` | Average visit frequency (current month) |
| `Churn` | Cancellation: 1 = left, 0 = stayed (target variable) |

**Dimensions:** 4,000 customers × 14 columns | No missing values | No duplicates

***

## 📈 Key Results

### **Classification Model**

| Metric | Logistic Regression | Random Forest |
|---------|:-------------------:|:-------------:|
| Accuracy | **92.25%** | 91.50% |
| Precision | **85.42%** | 83.85% |
| Recall (Sensitivity) | **82.83%** | 81.31% |

**Logistic Regression** outperformed Random Forest on every metric, indicating that the relationships between the features and churn are predominantly linear in this dataset.

### **Cluster Segmentation**

| Cluster | Customers | Churn Rate | Profile |
|---------|:--------:|:-------------:|--------|
| Cluster 2 | 941 | 2.2% | Long contracts (~12 months), highest engagement |
| Cluster 1 | 746 | 5.5% | Highest visit frequency (2.94/week) |
| Cluster 3 | 631 | 26.9% | 100% referred by friends — churn at the average |
| Cluster 4 | 544 | 45.0% | None live near the gym |
| Cluster 0 | 1,138 | 51.3% | Short contracts, low engagement |

Clusters 0 and 4 concentrate ~78% of all churners in the base.

### **Factors Most Associated with Churn**

Variables with a moderate negative correlation (the lower the value, the higher the risk of leaving):
- `Lifetime` — how long the customer has been with the gym
- `Avg_class_frequency_current_month` — recent visit frequency
- `Age` — younger customers leave more
- `Contract_period` — short contracts = higher risk
- `Month_to_end_contract` — proximity to the end of the contract

***

## 🛠️ Technologies Used

- **Pandas** — Data manipulation and analysis
- **NumPy** — Numerical operations
- **Matplotlib & Seaborn** — Data visualisation
- **Scikit-learn** — ML models, pre-processing, and metrics
- **SciPy** — Hierarchical clustering (dendrogram)
- **Jupyter Notebook** — Development and documentation

***

## 🚀 How to Run

### **Prerequisites**
```bash
python >= 3.8
jupyter notebook
pandas
numpy
matplotlib
seaborn
scikit-learn
scipy
```

### **Installation**
```bash
# Clone the repository
git clone https://github.com/raimirsilva/gym-churn-prediction.git

# Go to the directory
cd gym-churn-prediction

# Install dependencies
pip install -r requirements.txt

# Start Jupyter Notebook
jupyter notebook
```

### **Execution**
Make sure the file `gym_churn_us.csv` is in `../data/` relative to the notebook, or adjust the path in the reading cell. Then open `gym-project.ipynb` and run the cells in sequence.

***

## 🎓 Key Takeaways

This project demonstrates competencies in:

- **Exploratory data analysis (EDA)** with a focus on binary variables and class imbalance
- **Pre-processing** with normalisation and a correct train/test split (no data leakage)
- **Binary classification** comparing a linear algorithm and an ensemble
- **Metrics beyond accuracy** — precision, recall, and their importance in business contexts
- **Unsupervised clustering** with K-Means and dendrogram analysis
- **Data storytelling** — translating technical results into actionable recommendations

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

# 🏋️ Gym Churn Prediction

**Previsão de Rotatividade de Clientes em Academia com Machine Learning**

***

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do bootcamp TripleTen de Data Analytics. O objetivo é identificar clientes com risco de cancelamento (churn) em uma rede de academias americana, combinando **análise exploratória de dados**, **modelos de classificação binária** e **segmentação por clusterização**.

A análise parte de um dataset com 4.000 clientes e 14 características comportamentais e contratuais, e entrega tanto um modelo preditivo quanto perfis de segmento com recomendações concretas de retenção.

***

## 🎯 Objetivos

- Compreender o perfil dos clientes que cancelam vs. os que permanecem
- Identificar as variáveis com maior poder preditivo sobre o churn
- Construir e comparar modelos de classificação binária (Regressão Logística e Random Forest)
- Segmentar a base de clientes em grupos homogêneos com K-Means
- Propor estratégias de retenção baseadas em dados para cada segmento

***

## 🗂️ Estrutura do Projeto

### **Etapa 1: Carregamento e Exploração Inicial**
- Importação do dataset `gym_churn_us.csv`
- Análise da estrutura dos dados (tipos, nulos, duplicatas)
- Estatísticas descritivas e identificação de desequilíbrio de classes (~26,5% de churn)

### **Etapa 2: Análise por Grupo**
- Comparação de médias entre clientes que ficaram (Churn=0) e que saíram (Churn=1)
- Identificação dos fatores mais associados à rotatividade

### **Etapa 3: Distribuições e Histogramas**
- Análise visual de 6 variáveis-chave por grupo de churn
- Identificação de padrões: contrato, frequência, lifetime, gastos adicionais

### **Etapa 4: Análise de Correlações**
- Matriz de correlação de Pearson com heatmap
- Ranking de correlação com a variável-alvo `Churn`
- Detecção de multicolinearidade entre features

### **Etapa 5: Modelos de Classificação Binária**
- Separação treino/teste (80/20), normalização com `StandardScaler`
- **Modelo 1:** Regressão Logística — baseline linear, altamente interpretável
- **Modelo 2:** Random Forest — ensemble de 100 árvores de decisão
- Comparação de acurácia, precisão e sensibilidade (recall)

### **Etapa 6: Clusterização com K-Means**
- Padronização dos dados e análise de dendrograma hierárquico
- Segmentação em 5 clusters com K-Means
- Análise de perfis médios e taxa de churn por grupo

### **Etapa 7: Conclusões e Recomendações**
- Síntese dos fatores críticos de retenção
- Estratégias de marketing personalizadas por segmento

***

## 📊 Dataset

### **Arquivo**
`gym_churn_us.csv`

### **Descrição das Colunas**

| Coluna | Descrição |
|--------|-----------|
| `gender` | Gênero do cliente (binário) |
| `Near_Location` | Mora próximo à academia (1 = sim) |
| `Partner` | Veio por empresa parceira (1 = sim) |
| `Promo_friends` | Foi indicado por amigo (1 = sim) |
| `Phone` | Forneceu telefone de contato (1 = sim) |
| `Contract_period` | Duração do contrato em meses (1, 6 ou 12) |
| `Group_visits` | Participa de aulas em grupo (1 = sim) |
| `Age` | Idade do cliente |
| `Avg_additional_charges_total` | Gastos médios em serviços complementares ($) |
| `Month_to_end_contract` | Meses restantes no contrato |
| `Lifetime` | Tempo de cliente na academia (meses) |
| `Avg_class_frequency_total` | Frequência média de visitas (total) |
| `Avg_class_frequency_current_month` | Frequência média de visitas (mês atual) |
| `Churn` | Cancelamento: 1 = saiu, 0 = ficou (variável-alvo) |

**Dimensões:** 4.000 clientes × 14 colunas | Sem valores ausentes | Sem duplicatas

***

## 📈 Principais Resultados

### **Modelo de Classificação**

| Métrica | Logistic Regression | Random Forest |
|---------|:-------------------:|:-------------:|
| Acurácia | **92,25%** | 91,50% |
| Precisão | **85,42%** | 83,85% |
| Sensibilidade (Recall) | **82,83%** | 81,31% |

A **Regressão Logística** superou a Random Forest em todas as métricas, indicando que as relações entre as features e o churn são predominantemente lineares neste dataset.

### **Segmentação por Cluster**

| Cluster | Clientes | Taxa de Churn | Perfil |
|---------|:--------:|:-------------:|--------|
| Cluster 2 | 941 | 2,2% | Contratos longos (~12 meses), maior engajamento |
| Cluster 1 | 746 | 5,5% | Maior frequência de visitas (2,94/semana) |
| Cluster 3 | 631 | 26,9% | 100% indicados por amigos — churn na média |
| Cluster 4 | 544 | 45,0% | Nenhum mora perto da academia |
| Cluster 0 | 1.138 | 51,3% | Contratos curtos, baixo engajamento |

Clusters 0 e 4 concentram ~78% de todos os churners da base.

### **Fatores mais associados ao Churn**

Variáveis com correlação moderada negativa (quanto menor, maior o risco de saída):
- `Lifetime` — tempo de casa do cliente
- `Avg_class_frequency_current_month` — frequência recente de visitas
- `Age` — clientes mais jovens saem mais
- `Contract_period` — contratos curtos = maior risco
- `Month_to_end_contract` — proximidade do fim do contrato

***

## 🛠️ Tecnologias Utilizadas

- **Pandas** — Manipulação e análise de dados
- **NumPy** — Operações numéricas
- **Matplotlib & Seaborn** — Visualização de dados
- **Scikit-learn** — Modelos de ML, pré-processamento e métricas
- **SciPy** — Agrupamento hierárquico (dendrograma)
- **Jupyter Notebook** — Desenvolvimento e documentação

***

## 🚀 Como Executar

### **Pré-requisitos**
```bash
python >= 3.8
jupyter notebook
pandas
numpy
matplotlib
seaborn
scikit-learn
scipy
```

### **Instalação**
```bash
# Clone o repositório
git clone https://github.com/raimirsilva/gym-churn-prediction.git

# Navegue até o diretório
cd gym-churn-prediction

# Instale as dependências
pip install -r requirements.txt

# Inicie o Jupyter Notebook
jupyter notebook
```

### **Execução**
Certifique-se de que o arquivo `gym_churn_us.csv` esteja em `../data/` em relação ao notebook, ou ajuste o caminho na célula de leitura. Em seguida, abra `gym-project.ipynb` e execute as células sequencialmente.

***

## 🎓 Aprendizados

Este projeto demonstra competências em:

- **Análise exploratória de dados (EDA)** com foco em variáveis binárias e desequilíbrio de classes
- **Pré-processamento** com normalização e separação correta treino/teste (sem data leakage)
- **Classificação binária** com comparação de algoritmos linear e ensemble
- **Métricas além da acurácia** — precisão, recall e sua importância em contextos de negócio
- **Clusterização não supervisionada** com K-Means e análise de dendrograma
- **Storytelling com dados** — tradução de resultados técnicos em recomendações acionáveis

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
