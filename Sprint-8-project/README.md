# Y.Afisha — Análise de Negócio (Marketing & Produto)

Análise exploratória e de performance para a loja **Y.Afisha**, com foco em aquisição, conversão, retenção e eficiência de canais de marketing (ROI/ROMI), usando dados de visitas, pedidos e custos. [file:1]

## Objetivo
Responder perguntas de negócio como:
- Como evoluem usuários e conversões ao longo do tempo? [file:1]
- Qual o desempenho por canal de aquisição (CAC, ROI/ROMI)? [file:1]
- Como está a retenção (one-time vs repeat buyers) e o LTV por coorte? [file:1]
- Existe diferença de conversão entre **desktop vs mobile/touch**? [file:1]

## Dados
Arquivos utilizados (CSV): [file:1]
- `visits_log_us.csv`: visitas (Device, Start/End Ts, Source Id, Uid). [file:1]
- `orders_log_us.csv`: pedidos (Buy Ts, Revenue, Uid). [file:1]
- `costs_us.csv`: custos de marketing (dt, costs, sourceid). [file:1]

Período analisado: **Jun/2017 a Mai/2018**. [file:1]

## Stack
- Python (pandas, numpy) para tratamento e agregações. [file:1]
- Visualizações com seaborn/matplotlib. [file:1]

## Metodologia (resumo)
- Limpeza/otimização: conversão de colunas de data para `datetime` nos 3 datasets. [file:1]
- Construção de métricas: usuários (diário/semanal), conversão, LTV por coorte, CAC por origem, ROI/ROMI por canal e por coorte, heatmaps para leitura de coortes. [file:1]
- Análises por:
  - **Canais (Source Id)**: eficiência de aquisição e retorno. [file:1]
  - **Dispositivo**: taxa de conversão e participação em usuários/conversões. [file:1]
  - **Retenção**: proporção de one-time buyers vs repeat buyers. [file:1]

## Principais achados
- **Dispositivo**: desktop converte mais que touch (taxa ~17,76% vs ~10,23%). [file:1]
- **Retenção**: alta proporção de one-time buyers (≈82,8%), indicando baixa recorrência. [file:1]
- **Eficiência de canais**:
  - Source 3 concentra grande parte do orçamento e apresenta pior eficiência (CAC alto) e ROI negativo no relatório. [file:1]
  - Sources 1 e 9 aparecem como canais com ROI muito superior e potencial de receber maior investimento. [file:1]
- **Gastos e performance no tempo**: há crescimento de usuários até Nov/2017 e queda no final do período, sugerindo perda de tração/ajuste de investimento. [file:1]

## Recomendações
- Realocar orçamento: reduzir dependência do **Source 3** e priorizar canais com melhor retorno (ex.: Sources 1, 2, 5 e 9). [file:1]
- Atacar conversão em mobile/touch (funil, UX, performance, checkout). [file:1]
- Estratégia de retenção para transformar one-time buyers em repeat buyers (CRM, remarketing, benefícios de recorrência). [file:1]
- Otimizar timing de campanhas para reduzir o tempo médio até conversão. [file:1]

## Como executar (local)
1. Clone o repositório.
2. Garanta os CSVs na pasta do projeto (mesmos nomes do notebook). [file:1]
3. Execute o notebook (Jupyter) ou rode as células do relatório exportado.
> Dependências principais: pandas, numpy, seaborn, matplotlib. [file:1]
