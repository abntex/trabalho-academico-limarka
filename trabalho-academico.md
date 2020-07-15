# Introdução

## Motivação

## Objetivos

### Objetivo geral

Apresentação do objetivo geral.

### Objetivos específicos

- objetivo 1
- objetivo 2
- objetivo 3

<!--
Isto é um comentário, mesma sintaxe do HTML. Para conhecer a sintaxe
do limarka consulte: https://github.com/abntex/limarka/wiki/Sintaxe
-->

# Como utilizar recursos do limarka

**Consulte o wiki do projeto**: https://github.com/abntex/limarka/wiki

Cada capítulo inicia automaticamente em página ímpar (em conformidade com as Normas). Por isso que existem várias páginas em branco nesse documento.

## Como citar e referenciar

O arquivo de referências é configurado em "configuracao.pdf", utilize-o
para gerenciar suas referências.

Veja um exemplo de citação direta e referenciação a seguir:

> A ‘norma’ 6023:2000 (2) é complicada e cheia de inconsistências. Jamais será
possível gerar um estilo bibtex totalmente consistente com a ‘norma’, até porque
nem a ‘norma’ é compatível com ela mesma. Um bom estilo bibliográfico deve
ter uma linha lógica para formatação de referências. Assim, com alguns poucos
exemplos, qualquer pessoa poderia deduzir os casos omissos. Nesse sentido, a
‘norma’ 6023 trafega pela contra-mão. É quase impossível deduzir sua linha lógica.
O problema mais grave, no entanto, fica pela maneira de organizar nomes. A ABNT
quebrou o sobrenome em duas partes. Normalmente se fala apenas em “*last name*”,
mas agora temos o “*last last name*” graças à ABNT. \cite[p. 5]{abntex2cite}.

Consulte o documento \citeonline{abntex2cite} para conhecer como referenciar os
conteúdos.

## Como inserir imagens

Por exemplo, a Figura \ref{passaro} mostra um pássaro que possui as cores da bandeira do Brasil.

<!--
Para referenciar essa figura no texto utilize: Figura \ref{passaro} ou \autoref{passaro}
-->

![Pássaro com as cores da bandeira do Brasil](imagens/passaro.jpg){#passaro escala=0.4}

Fonte: \citeonline{limarka}

As imagens são inseridas o mais próximo possível do texto que as referenciam.

# R

## Como inserir imagens do R

A Figura \ref{histograma} é um histograma.

![Exemplo de histograma](imagens/R/historgrama.pdf){#histograma escala=0.4}

Fonte: Autor.

Para gerar os códigos R, digite `rake r` no terminal. Isso irá compilar todas os códigos dentro da pasta imagens, com extensão `.R` para `.pdf`, em seguida poderá incluir normalmente como uma imagem.

**NOTA**: Certifique-se de ter instalado todos os pacotes R necessários para compilar sua imagem.

Também é recomendado a utilização do `guard` para geração automática quando houver alterações.

![Exemplo de geração de gráfico R](imagens/R/pizza-grafico.pdf){#pizza escala=0.4}

Fonte: Autor.

# Dois gráficos R juntos

![Exemplo de geração dois gráficos R, lado a lado](imagens/R/dois-graficos.pdf){#doisgraficos escala=0.4}

Fonte: Autora.



## Tabelas

Configurações de figura

|configuração|descrição|
|---|---|
|fig.align|	Alinhamento de graficos e figura no documento final: 'left', 'right', or 'center'|
|out.height <br> out.width	|Escala de fargura e altura da figura no documento final. Pode ser "%", "px", "cm"|
