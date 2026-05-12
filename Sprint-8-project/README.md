# 📊 Análise de Negócio

**Análise de Comportamento de Usuários, LTV, CAC e ROI por Canal de Marketing**

***

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do bootcamp TripleTen de Data Analytics. O objetivo é realizar uma análise completa do negócio da Y.Afisha — plataforma de ingressos e eventos — cobrindo desde o comportamento dos usuários até a rentabilidade dos canais de marketing.

A análise parte de dados reais de visitas, pedidos e custos de marketing entre **junho de 2017 e maio de 2018**, e culmina em recomendações estratégicas fundamentadas sobre alocação de orçamento, retenção de clientes e otimização de canais.

***

## 🎯 Objetivos

- Entender o comportamento de visitas e sessões dos usuários ao longo do tempo
- Analisar padrões de conversão e o tempo médio entre primeira visita e primeira compra
- Calcular LTV (Lifetime Value) por coorte e monitorar seu crescimento ao longo do tempo
- Calcular CAC (Custo de Aquisição por Cliente) por canal de marketing
- Calcular ROMI (Return on Marketing Investment) por coorte e canal
- Comparar performance por dispositivo (desktop vs. mobile)
- Identificar canais subinvestidos e canais com prejuízo
- Elaborar recomendações estratégicas para o negócio

***

## 🗂️ Estrutura do Projeto

### **Etapa 1: Exploração e Otimização dos Datasets**
- Carregamento dos três datasets e inspeção inicial
- Conversão de colunas de data de `object` para `datetime`
- Validação de tipos e consistência dos dados

### **Etapa 2: Análise de Usuários e Sessões**
- Contagem de usuários únicos diários, semanais e mensais
- Análise da duração das sessões e padrão de retorno dos usuários
- Identificação de tendência de crescimento (jun–nov/2017) e declínio (nov/2017–mai/2018)

### **Etapa 3: Análise de Vendas e Conversão**
- Tempo de conversão: intervalo entre primeira visita e primeira compra
- Distribuição de pedidos por usuário e identificação de one-time buyers
- Cálculo de LTV estático e dinâmico por coorte (baseado em média e mediana)
- Visualização da evolução do LTV ao longo de 11 meses

### **Etapa 4: Análise de Custos e ROI**
- Total de gastos por canal e ao longo do tempo
- Cálculo do CAC por canal de marketing
- Cálculo do ROI por canal (receita vs. custo)
- Cálculo do ROMI por coorte com heatmap detalhado
- Análise de conversão por tipo de dispositivo (desktop vs. touch)

### **Etapa 5: Conclusões e Recomendações**
- Síntese dos achados por área de análise
- Recomendações estratégicas baseadas nos dados

***

## 📊 Datasets

### **Arquivos**

| Arquivo | Descrição |
|---------|-----------|
| `visits_log_us.csv` | Log de sessões de usuários no período analisado |
| `orders_log_us.csv` | Log de pedidos/transações realizadas |
| `costs_us.csv` | Gastos de marketing por canal e por dia |

### **Descrição das Colunas**

**visits_log_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `Uid` | Identificador único do usuário |
| `Device` | Tipo de dispositivo (`desktop` ou `touch`) |
| `Start Ts` | Timestamp de início da sessão |
| `End Ts` | Timestamp de fim da sessão |
| `Source Id` | Canal de aquisição que originou a visita |

**orders_log_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `Uid` | Identificador único do usuário |
| `Buy Ts` | Timestamp da compra |
| `Revenue` | Receita gerada pelo pedido ($) |

**costs_us.csv**

| Coluna | Descrição |
|--------|-----------|
| `source_id` | Identificador do canal de marketing |
| `dt` | Data do gasto |
| `costs` | Valor investido no canal naquele dia ($) |

***

## 📈 Principais Resultados

### **Comportamento dos Usuários**

| Métrica | Resultado |
|---------|-----------|
| Pico de usuários mensais | 32.797 (novembro/2017) |
| Declínio até o fim do período | 20.701 (maio/2018) |
| Intervalo médio de retorno | ~28 dias |
| Tempo médio de conversão | 16,9 dias após primeira visita |
| Mediana do tempo de conversão | ~16 minutos (50% converte muito rápido) |

### **Vendas e LTV**

| Métrica | Resultado |
|---------|-----------|
| Usuários convertidos | 36.523 |
| One-time buyers | 30.231 (82,8%) |
| Ticket médio | ~$5,00 |
| LTV no mês 0 | $4,80 |
| LTV no mês 11 | $11,88 (+147%) |
| Break-even (ROMI = 1x) | Mês 8 após aquisição |

### **Custos e ROI por Canal**

| Canal | Investimento | ROI | Avaliação |
|-------|:------------:|:---:|-----------|
| Source 1 | Baixo | **+387,83%** | ✅ Subinvestido — prioridade máxima |
| Source 9 | Baixo | **+240,91%** | ✅ Excelente retorno — escalar |
| Source 2 | Médio | **+165,21%** | ✅ Sólido — considerar expansão |
| Source 5 | Médio | **+115,49%** | ✅ Rentável — considerar expansão |
| Source 4 | Alto | +96,32% | ⚠️ Abaixo do esperado |
| Source 10 | Médio | +41,15% | ⚠️ Desempenho ruim |
| Source 3 | **43% do budget** | **-15,66%** | ❌ Prejuízo — redistribuir verba |

### **Performance por Dispositivo**

| Dispositivo | Usuários únicos | Taxa de conversão |
|-------------|:---------------:|:-----------------:|
| Desktop | 70% do total | 17,76% |
| Mobile (touch) | 30% do total | 10,23% |

> Desktop converte **73% mais** que mobile — há oportunidade clara de otimização para dispositivos móveis.

***

## 🛠️ Tecnologias Utilizadas

- **Pandas** — Manipulação, agregação e análise de dados
- **NumPy** — Operações numéricas e cálculo de percentis
- **Matplotlib** — Visualização de séries temporais e comparações
- **Seaborn** — Heatmaps de ROMI por coorte
- **SciPy** — Estatísticas descritivas
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
scipy
```

### **Instalação**

```bash
# Clone o repositório
git clone https://github.com/raimirsilva/yafisha-business-analysis.git

# Navegue até o diretório
cd yafisha-business-analysis

# Instale as dependências
pip install -r requirements.txt

# Inicie o Jupyter Notebook
jupyter notebook
```

### **Execução**

Certifique-se de que os arquivos `visits_log_us.csv`, `orders_log_us.csv` e `costs_us.csv` estejam no mesmo diretório do notebook, ou ajuste os caminhos na célula de leitura. Em seguida, abra `Y.Afisha_company_analisys.ipynb` e execute as células sequencialmente.

***

## 🎓 Aprendizados

Este projeto demonstra competências em:

- **Análise de funil de conversão** — desde a visita até a compra, medindo cada etapa com precisão
- **Análise de coortes** — agrupamento de clientes por mês de primeira compra para comparar LTV e retenção ao longo do tempo
- **Cálculo de métricas de negócio** — LTV dinâmico, CAC, ROI e ROMI aplicados a dados reais
- **Análise de canais de marketing** — identificação de canais com retorno positivo e negativo, com recomendações de realocação de orçamento
- **Storytelling com dados** — transformar números em insights acionáveis para o negócio (ex: Source 3 recebe 43% do budget com ROI negativo)
- **Visualização de dados** — séries temporais, heatmaps de coorte, gráficos de barras duplas e comparativos por canal/dispositivo

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
