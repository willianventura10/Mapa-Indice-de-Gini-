# Desigualdade de Renda no Brasil
Dashboard com uma breve análise da desigualdade de renda no Brasil (Índice de Gini do período 2012 -2020, e Rendimento médio mensal da população brasileira em 2020). Foi utilizado o Power BI para limpeza, transformação dos dados e elaboração do Dashboard. Os dados foram obtidos do Banco de Tabelas Estatísticas (SIDRA) do IBGE (importação direta pelo Power BI utilizando a URL disponibilizada no próprio sistema do IBGE) e da base de dados do Banco Mundial (os dados foram baixados em formato CSV e posteriormente importados no Power BI. Para elaboração do Mapa com o Índice de Gini dos Países, foi utilizada a linguagem R (sobretudo o pacote ‘TMAP’) dentro do próprio Power BI (o script em linguagem R encontra-se no meu repositório do GitHub).

O que é o Índice de Gini?

Esse índice é comumente utilizado para calcular a desigualdade de distribuição de renda, mas pode ser usado também para qualquer distribuição, como concentração de terra, riqueza entre outras. Ele consiste em um número entre 0 e 1, onde 0 corresponde à completa igualdade de renda (onde todos têm a mesma renda) e 1 corresponde à completa desigualdade (onde uma pessoa tem toda a renda, e as demais nada têm). Fonte: Entendendo o Índice de Gini, IPECE.

O que os gráficos e mapa representam?

Como todos sabemos, o Brasil é um dos países mais desiguais do mundo. O Mapa e os gráficos com o Índice de Gini mostram um comparativo da realidade brasileira no âmbito global e nacional, no que tange ao Índice de Gini. Já o gráfico com o rendimento médio das pessoas, mostra o comparativo entre as classes de percentual da população brasileira, quanto ao seu rendimento médio mensal no ano de 2020. Por exemplo, pelo gráfico, depreende-se que em 2020, 80% da população brasileira teve rendimento médio mensal igual ou inferior a R$ 2.535,00 e que os 1% mais ricos obtiveram rendimento médio mensal igual a RS 29.342,00!

![DASHBOARD](https://user-images.githubusercontent.com/100307643/171503688-595fdf72-cffd-4b97-919e-875d64153ca9.jpg)
