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
- Email: raimir@proton.me

***

## 📄 Licença

Este projeto foi desenvolvido como parte do bootcamp **TripleTen Data Analytics** para fins educacionais e de portfólio.

***

**⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!**
