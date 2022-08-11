# Formulário 2/2

## Tipos de campos de formulário
### `<input type="radio">`
```html
<h1>Você é um estudante da Digital House?</h1>
<form>
  <div>
    <input id="sim" type="radio" name="estudante" value="sim">
    <label for="sim">Sim</label>
  </div>
  <div>
    <input id="nao" type="radio" name="estudante" value="nao">
    <label for="nao">Não</label>
  </div>
</form>
```
### `<input type="checkbox">`
```html
<h1>Quais clubes você costuma torcer?</h1>
<form>
  <div>
    <input type="checkbox" name="clube" value="flamengo" id="flamengo">
    <label for="flamengo">Flamengo</label>
  </div>
  <div>
    <input type="checkbox" name="clube" value="vasco" id="vasco">
    <label for="vasco">Vasco</label>
  </div>
</form>
```
**Nota:** Você pode utilizar o atributo `checked` para marcar a opções por padrão. 
### `<select> <option>`
```html
<h1>Escolha a cor do veículo</h1>
<select name="cor">
  <option value="vermelho">Vermelho</option>
  <option value="verde">Verde</option>
  <option value="azul">Azul</option>
  <option value="roxo">Roxo</option>
</select>
```
**Nota:** Você pode utilizar o atributo `selected` para selecionar a opção padrão. 
## Semântica
### `<fieldset> <legend>`
```html
<fieldset>
  <legend>Para qual time você torce?</legend>
  <div>
    <input id="flamengo" type="radio" name="clube" value="flamengo">
    <label for="flamengo">Flamengo</label>
  </div>
  <div>
      <input id="vasco" type="radio" name="clube" value="vasco">
      <label for="vasco">Vasco</label>
  </div>
</fieldset>
```
### `<optgroup>`
```html
<select>
  <optgroup label="Ferrari">
    <option>458 Spider</option>
    <option>F12 Berlinetta</option>
    <option>California T</option>
  </optgroup>
  <optgroup label="Porsche">
    <option>Macan</option>
    <option>918 Spyder</option>
  </optgroup>
</select>
```
