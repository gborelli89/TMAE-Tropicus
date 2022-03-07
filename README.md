# Tópicos de Matemática para Arquitetos e Engenheiros

Curso ministrado em abril de 2022 para o Grupo de Pesquisa TROPICUS, do IAU-USP (São Carlos).

O curso traz conceitos básicos de cálculo, calculo numérico e álgebra linear aplicados. 

## Notas de aula 

As aulas serão ministradas online e algumas notas de aula são disponibilizadas neste repositório. Boa parte do curso é desenvolvida utilizando a linguagem Julia. Embora o objetivo principal deste curso não seja aprender a utilizar a linguagem, o aluno que desejar pode se aventurar e tentar acompanhar diretamente pelos arquivos *.jl*. Para isso é necessário baixar Julia do site [https://julialang.org/downloads/]{https://julialang.org/downloads/}

Clone o repositório para o seu computador. Em seguida, abra o REPL da linguagem Julia e, com ";" e o comando *cd*, entre na pasta baixada. Digite "]" para entrar no gerenciador de pacotes e digite `activate .` para ativação (o ponto e necessário para indicar que a ativação será feita na pasta em que está, o que pode ser modificado de acordo). Na primeira vez que baixar será necessário baixar e instalar todos os pacotes necessários. Para isso, ainda no gerenciador de pacotes, digite `instantiate`. Fazendo isso todos os pacotes necessários, nas versões corretas, serão baixados.

As notas de aula estão em *notebooks* desenvolvidos com o pacote *Pluto.jl* Para abrir uma arquivo faça:

```
using Pluto

Pluto.run()
```

Uma pagina do navegador abrirá. Basta escolher a nota que deseja abrir.

