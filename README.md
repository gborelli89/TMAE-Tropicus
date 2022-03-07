# Tópicos de Matemática para Arquitetos e Engenheiros

Curso ministrado em abril de 2022 para o Grupo de Pesquisa TROPICUS, do IAU-USP (São Carlos).

O curso traz conceitos básicos e aplicações de cálculo, de cálculo numérico e de álgebra linear. 

## Notas de aula 

As aulas serão ministradas online e algumas notas de aula são disponibilizadas neste repositório. Boa parte do curso é desenvolvida utilizando a linguagem Julia. Embora o objetivo principal não seja ensinar a utilizar a linguagem, o aluno que desejar pode se aventurar e tentar acompanhar diretamente pelos arquivos *.jl*. Para isso é necessário baixar Julia do site [https://julialang.org/downloads/](https://julialang.org/downloads/). Após as aulas serão gerados e fornecidos os arquivos das notas de aula em pdf ou html.

### Baixando e configurando Julia (opcional)

Clone o repositório inteiro para o seu computador. Em seguida, abra o REPL da linguagem Julia. Em primeiro lugar, será necessário ativar o projeto. para isso, faça:

```
using Pkg
Pkg.activate("caminho/do/diretorio")
```
Na primeira vez que for utilizar, digite o comando `Pkg.instantiate()`. As notas de aula estão em *notebooks* desenvolvidos com o pacote *Pluto.jl* Para abrir uma arquivo faça:

```
using Pluto
Pluto.run()
```

Uma pagina do navegador abrirá. Basta escolher a nota que deseja abrir.

