# Introdução {#indroducao}

Introdução do trabalho.[^intro]

[^intro]: Exemplo de nota de rodapé.

# Referencial teórico

Cada capítulo inicia automaticamente em página impar (em conformidade com as Normas).

## Como citar e referenciar

O arquivo de referências é configurado em "configuracao.pdf", utilize-o
para gerenciar suas referências.

Veja um exemplo de citação e referenciação a seguir:

> Alguém falou algo bem bonito aqui, mas não esquecer que para fazer
> uma citação desta forma é necessário ter no mínimo três linhas de
> acordo com a ABNT \cite{abntex2cite}.

Consulte \citeonline{abntex2cite} para conhecer como referenciar os
conteúdos.

## Como inserir imagens

As imagens precisam ser inseridas utilizando código em latex, utilize o comando `limarka fig` com esse proprósito. 

Por exemplo, a Figura \ref{fig:passaro} mostra um pássaro que possui as cores da bandeira do Brasil. Consulte a documentações do limarka para aprender como utilizar o comando.

<!--
Para referenciar essa figura no texto utilize: Figura \ref{fig:passaro} 
-->
\begin{figure}[htbp]
\caption{\label{fig:passaro}Pássaro com as cores da bandeira do Brasil}
\begin{center}
\includegraphics[width=0.4\textwidth]{imagens/passaro.jpg}
\end{center}
\legend{Fonte: \citeonline{limarka}}
\end{figure}


## Tabelas latex

Consulte as documentações do limarka e o abntex2 para criaação de tabelas em conformidades com as Normas da ABNT.

Utilize código Latex para criar as tabelas.

\begin{table}[htbp]
\IBGEtab{%
  \caption{Cronograma da pesquisa}%
  \label{tabela-ibge}
}{%
  \begin{tabular}{ccccc}
  \toprule
   Etapa & Set & Out & Nov & Dez \\
  \midrule \midrule
   Conclusão da implementação da ferramenta & X \\
  \midrule 
	Publicação da Ferramenta e convite para experimentos on-line &  & X \\
  \midrule 
	Condução de experimentos controlados &  & X \\
  \midrule 
	Análise dos resultados dos experimentos &  & X & X \\
  \midrule 
	Escrita da dissertação & X & X & X \\
  \midrule 
	Experimento realístico & X & X  \\
  \midrule 
	Defesa da dissertação &  &  &  & X \\

\bottomrule
\end{tabular}%
}{%
  \fonte{Autor}%
  }
\end{table}

# Resultados

Resultados aqui.

# Conclusão

Conclusão do trabalho.
