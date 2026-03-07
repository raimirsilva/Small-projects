# Y.Afisha — Análise de Negócio (Marketing & Produto)

Análise exploratória e de performance para a loja **Y.Afisha**, com foco em aquisição, conversão, retenção e eficiência de canais de marketing (ROI/ROMI), usando dados de visitas, pedidos e custos.

## Objetivo
Responder perguntas de negócio como:
- Como evoluem usuários e conversões ao longo do tempo?
- Qual o desempenho por canal de aquisição (CAC, ROI/ROMI)?
- Como está a retenção (one-time vs repeat buyers) e o LTV por coorte?
- Existe diferença de conversão entre **desktop vs mobile/touch**?

## Dados
Arquivos utilizados (CSV):
- `visits_log_us.csv`: visitas (Device, Start/End Ts, Source Id, Uid).
- `orders_log_us.csv`: pedidos (Buy Ts, Revenue, Uid).
- `costs_us.csv`: custos de marketing (dt, costs, sourceid).

Período analisado: **Jun/2017 a Mai/2018**.

## Stack
- Python (pandas, numpy) para tratamento e agregações.
- Visualizações com seaborn/matplotlib.

## Metodologia (resumo)
- Limpeza/otimização: conversão de colunas de data para `datetime` nos 3 datasets.
- Construção de métricas: usuários (diário/semanal), conversão, LTV por coorte, CAC por origem, ROI/ROMI por canal e por coorte, heatmaps para leitura de coortes.
- Análises por:
  - **Canais (Source Id)**: eficiência de aquisição e retorno.
  - **Dispositivo**: taxa de conversão e participação em usuários/conversões.
  - **Retenção**: proporção de one-time buyers vs repeat buyers.

## Principais achados
- **Dispositivo**: desktop converte mais que touch (taxa ~17,76% vs ~10,23%).
- **Retenção**: alta proporção de one-time buyers (≈82,8%), indicando baixa recorrência.
- **Eficiência de canais**:
  - Source 3 concentra grande parte do orçamento e apresenta pior eficiência (CAC alto) e ROI negativo no relatório.
  - Sources 1 e 9 aparecem como canais com ROI muito superior e potencial de receber maior investimento.
- **Gastos e performance no tempo**: há crescimento de usuários até Nov/2017 e queda no final do período, sugerindo perda de tração/ajuste de investimento.

## Recomendações
- Realocar orçamento: reduzir dependência do **Source 3** e priorizar canais com melhor retorno (ex.: Sources 1, 2, 5 e 9).
- Atacar conversão em mobile/touch (funil, UX, performance, checkout).
- Estratégia de retenção para transformar one-time buyers em repeat buyers (CRM, remarketing, benefícios de recorrência).
- Otimizar timing de campanhas para reduzir o tempo médio até conversão.

## Como executar (local)
1. Clone o repositório.
2. Garanta os CSVs na pasta do projeto (mesmos nomes do notebook).
3. Execute o notebook (Jupyter) ou rode as células do relatório exportado.
> Dependências principais: pandas, numpy, seaborn, matplotlib.
