# 🍽️ Mercado de restaurantes em Los Angeles

Análise exploratória do mercado de alimentação de Los Angeles com foco em tomada de decisão para investidores. O projeto investiga a composição do mercado, o perfil de redes versus independentes, a capacidade dos estabelecimentos e a distribuição geográfica por ruas.

---

## 📊 Visão geral

| Item | Detalhe |
|------|---------|
| **Dataset** | `rest_data_us_upd.csv` |
| **Total de registros** | 9.648 estabelecimentos |
| **Cidade analisada** | Los Angeles, EUA |
| **Notebook** | `LA-restaurants.ipynb` |
| **Output gerado** | `LA_restaurants_apresentacao.pdf` |

---

## 🗂️ Estrutura do projeto

```
├── data/
│   ├── rest_data_us_upd.csv              # Dataset principal
│   └── LA_restaurants_apresentacao.pdf   # Dashboard gerado pelo notebook
├── notebooks/
│   └── LA-restaurants.ipynb              # Análise completa
└── README.md
```

---

## 📁 Sobre o Dataset

O arquivo `rest_data_us_upd.csv` contém dados de estabelecimentos de alimentação de Los Angeles com as seguintes colunas:

| Coluna | Tipo | Descrição |
|--------|------|-----------|
| `id` | int | Identificador único do estabelecimento |
| `object_name` | str | Nome do estabelecimento |
| `address` | str | Endereço completo |
| `chain` | bool | `True` = rede / `False` = independente |
| `object_type` | str | Tipo: Restaurant, Fast Food, Cafe, Bakery, Bar, Pizza |
| `number` | int | Capacidade de assentos |

---

## 🔍 Análises realizadas

### 1. Proporção por tipo de estabelecimento
Distribuição percentual dos 6 tipos de estabelecimento (Restaurante, Fast Food, Café, Padaria, Bar, Pizza) com gráfico de barras horizontal.

### 2. Redes vs. Independentes
- **61,9%** dos estabelecimentos são independentes
- **38,1%** são redes
- Visualização em gráfico de pizza com comparação direta entre os grupos.

### 3. Tipo de estabelecimento por modelo de negócio
Barras agrupadas comparando a proporção de cada tipo dentro do grupo de redes e dentro do grupo de independentes — revelando que **fast food domina as redes** e **restaurantes tradicionais dominam os independentes**.

### 4. Capacidade de assentos: redes vs. independentes
Boxplot comparando a distribuição de assentos entre os dois grupos, investigando se redes operam com mais unidades e menos assentos (modelo fast food) ou o contrário.

### 5. Concentração geográfica por rua
- Top 10 ruas com mais estabelecimentos em LA
- **Wilshire Blvd** lidera com 354 restaurantes
- **63,5% das ruas** têm apenas 1 restaurante — indicando baixa saturação fora das artérias principais

### 6. Dashboard final (PDF)
Apresentação executiva consolidando os principais KPIs e gráficos em uma única página, exportada em PDF de alta qualidade.

---

## 💡 Principais conclusões

- Restaurantes tradicionais são o formato dominante em Los Angeles, especialmente entre independentes.
- Fast food é o modelo mais representativo das redes — compatível com o perfil de franquias e operações padronizadas.
- O mercado tem forte presença de negócios locais (independentes), sugerindo espaço para novos entrantes com diferenciação.
- **Recomendação para investidores:** Café ou Padaria com 30–50 assentos em rua secundária representa oportunidade de referência local antes de escalar para rede, dado o baixo nível de competição fora das principais avenidas.

---

## 🛠️ Tecnologias utilizadas

- **Python 3**
- **Pandas** — manipulação e análise de dados
- **NumPy** — operações numéricas
- **Matplotlib** — visualizações customizadas e dashboard
- **Seaborn** — gráficos estatísticos
- **Jupyter Notebook** — ambiente de desenvolvimento

---

## ▶️ Como executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/raimirsilva/Small-projects/tree/4c4c8c0e1d69090ed8ffe9475f1dc4ec91454070/Sprint-10-project.git
   cd Sprint-10-project
   ```

2. Instale as dependências:
   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```

3. Abra o notebook:
   ```bash
   jupyter notebook notebooks/LA-restaurants.ipynb
   ```

4. Execute todas as células em ordem (`Kernel > Restart & Run All`).

> O PDF de apresentação será salvo automaticamente em `data/LA_restaurants_apresentacao.pdf`.

---

## 👤 Raimir

Feito por **[raimirsilva]** · [LinkedIn](https://linkedin.com/in/raimir-silva) · [GitHub](https://github.com/raimirsilva)
