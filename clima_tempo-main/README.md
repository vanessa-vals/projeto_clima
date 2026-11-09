# Projeto Clima

## Diferença entre Expanded e Flexible

O `Expanded` faz o widget ocupar o espaço disponível dentro de uma `Row` ou `Column`.

O `Flexible` permite que o widget utilize o espaço disponível sem obrigatoriamente ocupar todo esse espaço.

## O que acontece quando usamos valores diferentes de flex?

O valor de `flex` define a proporção do espaço disponível que cada widget recebe em relação aos outros widgets flexíveis.

Por exemplo, quando usamos `Expanded` com `flex: 1` e `Flexible` com `flex: 2`, o segundo widget pode receber uma proporção duas vezes maior do espaço disponível que o primeiro, considerando o espaço distribuído entre eles.

## Conclusão

`Expanded` é usado quando queremos que o widget ocupe o espaço disponível. `Flexible` permite maior flexibilidade na ocupação desse espaço. Os valores de `flex` controlam a proporção de espaço distribuída entre os widgets.

## Pesquisa de Widgets (tela Detalhes avançados)

| Widget | Para que serve (com minhas palavras) | 2 propriedades usadas e o que fazem | Link da documentação |
|---|---|---|---|
| `Card` | Cria um cartão com cantos arredondados e uma leve sombra, para separar e destacar um conteúdo na tela. | `child`: o widget que fica dentro do cartão. `elevation`: o tamanho da sombra, que dá a ideia de o cartão estar mais alto ou mais baixo. | [Card](https://api.flutter.dev/flutter/material/Card-class.html) |
| `ListTile` | É uma linha pronta de lista, com lugar para ícone, título, subtítulo e outro ícone no final. | `leading`: o que aparece no começo da linha (à esquerda), como o ícone do alerta. `trailing`: o que aparece no final da linha (à direita), como a seta. | [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) |
| `GridView.count` | Mostra os widgets em uma grade, com um número fixo de colunas. | `crossAxisCount`: quantas colunas a grade tem (2 no meu caso). `shrinkWrap`: faz a grade ocupar só a altura do conteúdo, o que evita o erro de altura dentro do `ListView`. | [GridView.count](https://api.flutter.dev/flutter/widgets/GridView/GridView.count.html) |
| `Stack` | Coloca os widgets um em cima do outro, na ordem da lista (o último fica por cima). | `children`: a lista de widgets empilhados (primeiro a imagem, depois o texto e o ícone). `alignment`: onde ficam os filhos que não usam `Positioned`. | [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html) |
| `Positioned` | Usado dentro do `Stack` para colocar um widget em um lugar exato, medindo a distância das bordas. | `left` e `bottom`: distância da borda esquerda e da borda de baixo (usei no texto "26°C"). `top` e `right`: distância do topo e da borda direita (usei no ícone do sol). | [Positioned](https://api.flutter.dev/flutter/widgets/Positioned-class.html) |
| `Wrap` | Coloca os widgets lado a lado e, quando não cabem mais na linha, passa os próximos para a linha de baixo. | `spacing`: espaço entre os widgets da mesma linha. `runSpacing`: espaço entre uma linha e a outra. | [Wrap](https://api.flutter.dev/flutter/widgets/Wrap-class.html) |
| `Chip` | É uma etiqueta pequena (tag) com um texto e, se quiser, um ícone. | `label`: o texto da etiqueta. `avatar`: um widget pequeno antes do texto, como um `Icon`. | [Chip](https://api.flutter.dev/flutter/material/Chip-class.html) |

### Qual a diferença entre Row/Column e Stack? Quando usar cada um?

`Row` e `Column` colocam os widgets um depois do outro: lado a lado (`Row`) ou um embaixo do outro (`Column`).
`Stack` coloca os widgets um em cima do outro, e com o `Positioned` dá para escolher o lugar de cada um.
Uso `Row`/`Column` para organizar em linha ou coluna, e `Stack` quando preciso sobrepor, como um texto em cima de uma imagem.