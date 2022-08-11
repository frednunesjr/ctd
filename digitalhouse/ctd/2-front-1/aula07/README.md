# CSS: Seletores

Cascading Style Sheets, ou Folhas de Estilo em Cascata, é um linguagem que permite a personalização de elementos de um documento HTML. 

## Sintaxe 

A linguagem CSS é orientada a seleção, ou seja, você seleciona um ou mais elementos do documento HTML e altera suas propriedades/características - dimensão, cor de fundo, cor de texto, etc.

- Você seleciona o elemento, podendo ser uma tag `h1{ ... }`, class `.elemento { ... }`, id `#elemento { ... }`, etc.
- Altera as propriedades do elemento selecionado, no caso a seguir, a seleção é por tag e altero a cor de fundo `div { background-color: #000; }`.

**Nota:** A seguir explico como incorporar CSS a seu documento HTML.
## Como utilizar CSS no projeto?

Existem três maneiras de realizar a personalização de elementos em documentos HTML, sendo elas: direta, incorporada no documento e em um documento externo.


### 1. Personalização direta no elemento

É a personalização como atributo do elemento HTML. 

``` html
<h1 style="font-family: Arial; font-size: 24px; color: pink">Um título qualquer</h1>
```

**A favor**
- Por ser diretamente no código não gera conflitos de especificidade.

**Contra**
- Não permite o reaproveitamento do estilo nos elementos do documento HTML.
- Não permite compartilhar o código com múltimos documentos.

### 2. Personalização incorporada no documento

Permite a personalização do documento a partir de uma única declaração no cabeçalho do documento HTML.

``` html
<html>
    <head>
        ...
        <style>
            h2 {
                font-family: Arial; 
                font-size: 18px; 
                color: lightgray;
            }
        </style>
    </head>
    <body>
        <!-- 
            Todos os elementos <h2>
            receberão a personalização. 
        -->
        <h2>Um título qualquer</h2>
        <h2>Outro título qualquer</h2>
    </body>
</html>
```

**A favor**
- Permite o reaproveitamento do estilo nos elementos do documento HTML.

**Contra**
- Não permite compartilhar o código com múltiplos documentos.
- Códigos sem planejamento costumam ter conflitos de especificidade.

### 3. Personalização através de um documento de personalização externo

Permite a personalização de múltiplos documentos HTML a partir de um único documento de estilização CSS.

**index.html**
``` html
<html>
    <head>
        ...
        <!-- 
            O documento CSS é importado através
            da tag <link> e personaliza os elementos 
            do documento HTML.
        -->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h2>Um título qualquer</h2>
        <h2>Outro título qualquer</h2>
    </body>
</html>
```

**sobre.html**
``` html
<html>
    <head>
        ...
        <!-- 
            O documento CSS é importado através
            da tag <link> e personaliza os elementos 
            do documento HTML.
        -->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <h2>Um título qualquer</h2>
        <h2>Outro título qualquer</h2>
    </body>
</html>
```

**style.css**
``` css
h2 {
    font-family: Arial; 
    font-size: 18px; 
    color: lightgray;
}
```

**Nota:** Nesse exemplo ambos documentos HTML serão personalizado pelo documento `style.css`.

**A favor**
- Permite o reaproveitamento do estilo nos elementos do documento HTML.
- Permite compartilhar o código com múltiplos documentos.

**Contra**
- Códigos sem planejamento costumam ter conflitos de especificidade.
- Gera uma requisição para cada documento de personalização, o que aumenta o tempo de carregamento.

## Tipos de seleção de elementos HTML

### Global

Seleciona todos os elementos do documento HTML e alteras suas propriedades.

``` css
* {
    margin: 0;
    padding: 0;
}
```

### Seleção de tag(s)

Seleciona todos os elementos `<p>`. 

``` css
p {
    margin: 0;
    padding: 0;
}
```
**Nota:** Basta substituir a tag que deseja selecionar para alterar a seleção.

### Seleção por atributos de tag(s)

Seleciona todos os elementos `<a target="_blank">`. Nesse caso leva em consideração o atributo target idependente do valor interno. 

``` css
a[target] {
    background-color: red;
}
```

Outras opções de seleção...

``` css
/* Começa com # */
a[href^="#"] {
	background-color: yellow;
}

/* Começa com https */
a[href^="https"] {
	background-color: green;
}

/* Começa com .br */
a[href$=".br"] {
	background-color: gray;
}

/* Em qualquer local possui a palavra-chave house */
a[href*="house"] {
	background-color: purple;
}

/* Cujo o valor é _blank */
a[target="_blank"] {
	border-bottom: 2px solid red;
}
```

### Seleção por nome de Class

Seleciona todos os elementos que possuam o nome de `class` declarados.

``` css
.titulo {
    font-family: Arial, sans-serif;
    color: gray;
}
```

### Seleção por nome de ID

Seleciona o elemento que possui o nome de `id` declarado.

``` css
#nav {
    background-color: black;
    padding: 25px;
    margin: 0;
}
```

**Nota:** Quando se identifica um elemento, através de uma `id`, basicamente definimos um nome único para o elemento, sendo assim, ele não pode se repetir na página. Por conta desse fato, o código CSS, quando seleciona uma `id`, normalmente não pode ser reaproveitado. 

### Multiplas seleções de elementos

``` css
p, span, address, q {
    color: black;
    font-family: Arial, sans-serif;
    font-size: 16px;
}
```

## Dicas
- [Especificidade](https://developer.mozilla.org/pt-BR/docs/Web/CSS/Specificity)
- [Como perder peso no browser](https://browserdiet.com/pt/)
- [Padrões de projeto CSS](http://getbem.com/introduction/)