# CSS: Tableless 2/2
**Tableless** é uma metodologia de desenvolvimento de páginas web que não utiliza tabelas para disposição de conteúdo na página sugerido pela W3C. 
O objetivo dessa metodologia é tornar o código fonte HTML o mais semântico, aproveitando as propriedade de posionamento da linguagem CSS.

## Dimensões
### Modelo de caixa - Box Model
Por padrão o modelo de caixa da maioria dos navegadores considera a dimensão de qualquer elemento html a partir do resultado da soma do espaçamento interno `padding`, espaçamento externo `margin` e bordar `border`. A propriedade CSS `box-sizing` permite alterar a maneira como esse calculo é realizado.
#### box-sizing: content-box | border-box
**Sintaxe**
``` css
.boxe {
  box-sizing: content-box; 
}
```

####
## Posicionamento
### Contexto de posicionamento
#### position: relative | absolute | fixed
**Sintaxe**
``` css
.boxe {
  position: relative; 
}
```
### Posicionamento de camadas (profundidade)
#### z-index: posição (número)
``` css
.boxe {
  z-index: 1; 
}
```

## Personalização
### Imagem de fundo
#### background-image: url('./localizacao/nome-da-imagem.jpg')
```css
/* Utilizando apenas uma imagem de plano de fundo */
background-image: url("./imagem/imagem1.png");

/* Utilizando múltiplas imagens de plano de fundo */
background-image: url("./imagem/imagem1.png"),
                  url("./imagem/imagem2.png");

/* Utilizando um degradê de cores e imagens de plano de fundo */
background-image: linear-gradient(blue, orange),
                  url("./imagem/imagem1.png");
```

#### background-size: cover | contain
```css
/* Sintaxe */
background-size: cover;
background-size: contain;

/* Sintaxe de um valor */
/* largura da imagem (height é setado como 'auto') */
background-size: 50%;
background-size: 3em;
background-size: 12px;
background-size: auto;

/* Sintaxe de dois valores */
/* Primeiro valor: largura da imagem, segundo valor: altura */
background-size: 50% auto;
background-size: 3em 25%;
background-size: auto 6px;
background-size: auto auto;

/* Múltiplos valores de backgrounds para a imagem de fundo */
/* Não confunda com background-size: auto auto */
background-size: auto, auto;
background-size: 50%, 25%, 25%;
background-size: 6px, auto, contain;
```
#### background-position: top | left | right | center | bottom
```css
/* Valores chave */
background-position: top;
background-position: bottom;
background-position: left;
background-position: right;
background-position: center;

/* Valores <percentuais> */
background-position: 25% 75%;

/* valores <espessura> */
background-position: 0 0;
background-position: 1cm 2cm;
background-position: 10ch 8em;

/* Multiplas imagens */
background-position: 0 0, center;

/* Valores de cantos relativos */
background-position: bottom 10px right 20px;
background-position: right 3em bottom 10px;
background-position: bottom 10px right;
background-position: top right 10px;
```
#### background-repeat: repeat-x | repeat-y | repeat | round | no-repeat
```css
/* Valores chave */
background-repeat: repeat-x;
background-repeat: repeat-y;
background-repeat: repeat;
background-repeat: space;
background-repeat: round;
background-repeat: no-repeat;

/* Dois valores: horizontal | vertical */
background-repeat: repeat space;
background-repeat: repeat repeat;
background-repeat: round space;
background-repeat: no-repeat round;

```
