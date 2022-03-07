### A Pluto.jl notebook ###
# v0.18.0

using Markdown
using InteractiveUtils

# ╔═╡ 926c7476-0e49-41ad-9680-535b54b050bd
using LinearAlgebra

# ╔═╡ 8b11d7a0-9328-11ec-233b-8f566f2d1ad4
md"""
# Autovalores e autovetores
"""

# ╔═╡ 1216a255-8bdb-46c6-bcc5-8fd5d48a4c32
md"""
Para alguns vetores especiais, ao aplicar um operador $A$, o vetor resultante corresponde ao próprio vetor inicial multiplicado por um fator λ. A estes vetores dá-se o nome *autovetores*. Os fatores multiplicadores, por sua vez, são denominados *autovalores*.

$Ax = λx$

Para resolver o problema acima, deve-se reescrever a equação.

$(A - λI)x = 0$

Desconsiderando a solução trivial (vetor nulo), conclui-se que a matriz $(A-λI)$ deve ser singular, ou seja,

$det(A-λI) = 0$
"""

# ╔═╡ 070aef8d-7daa-4aab-9158-1225ba104d9b
md"""
## Diagonalização de matrizes

Suponha que $A$ tenha $n$ autovetores independentes, então

$AS = SΛ,$

sendo $Λ$ a matriz diagonal com os autovalores e $S$ a matriz dos autovetores. Conclui-se que 

$Λ = S^{-1}AS \quad ou \quad A = SΛS^{-1}$

OBS.: as equações acima pressupõem autovetores independentes ($S$ não singular, inversível).
"""

# ╔═╡ e5347c95-2457-482b-bd44-66f5e608cf70
md"""
## Potências

Um problema que pode aparecer em alguns casos é a multiplicação de um mesmo operador diversas vezes (em processo iterativo, por exemplo). Nesses casos os autovalores podem ser um indicativo dos crescimento dos valores.

Multiplicando os dois lados da equação $Ax = λx$, temos:

$A^2x = λ^2x$

Para múltiplos altovalores e autovetores:

$A^2 = SΛ(S^{-1}S)ΛS^{-1} = SΛ^2S^{-1}$

$A^k = SΛ^kS^{-1}$

Nota-se que $A$ tende a zero com $k → ∞$ se todos $|λ_i| < 1$
"""

# ╔═╡ adb92a4d-d7c6-43b2-994b-1ea6da81b4c7
md"""
**Exemplo 1 - Fibonacci**

Quão rápido a sequência 0,1,1,2,3,5,8,13,... cresce?

$F_{k+2} = F_{k+1} + F_k$

Vamos reescrever a equação acima em um sistema de primeira ordem:

$u_{k+1} = \begin{bmatrix}
				1 & 1 \\
   				1 & 0 \\
	  		\end{bmatrix} u_k$

sendo

$u_k = \begin{bmatrix}
			F_{k+1} \\
   			F_k \\
	  	\end{bmatrix}$

e a matrix $A$

$A = \begin{bmatrix}
			1 & 1 \\
   			1 & 0 \\
	  \end{bmatrix}$

"""

# ╔═╡ bb520a45-21a5-48ee-a352-e294b1ac1589
A = [1 1; 1 0]

# ╔═╡ ddab20ac-6772-482b-9bf8-17194c76b69d
eigvals(A)

# ╔═╡ 5b53caf6-62f4-443a-947c-0c7e810f9908
md"""
O crescimento é dominado pelo autovalor maior do que 1. O outro tende a zero com as multiplicações sucessivas.
"""

# ╔═╡ 00a459b0-6b3e-455c-941f-538dac0e9640
md"""
## Equações diferenciais

Vamos considerar o sistema de primeira ordem abaixo.

$\begin{cases}
	\frac{du_1}{dt} = -u_1 + 2u_2 \\
 	\frac{du_2}{dt} = u_1 - 2u_2 \\
\end{cases}$

Sendo que as condições de contorno são $u_1(0)=1$ e $u_2(0)=0$.

**Interpretação da equação diferencial?**
"""

# ╔═╡ 60baec92-d134-4d96-959c-28936c9535cf
md"""
Podemos escrever o sistema da seguinte forma:

$\frac{du}{dt} = Mu$

sendo

$M = \begin{bmatrix}
		-1 & 2 \\
  		1 & -2 \\
	\end{bmatrix}$

com $u(0) = \begin{bmatrix}
				1 \\ 0 \\
			\end{bmatrix}$.
"""

# ╔═╡ 180055c9-c950-40b1-a517-f2f873c6e9d4
M = [-1 2; 1 -2]

# ╔═╡ 2b4ce406-2d2c-4aca-a17b-c0685de63dc6
eigvals(M)

# ╔═╡ cc00a39a-0947-4864-ac70-df7758444ed4
eigvecs(M)

# ╔═╡ 0f5ff961-5868-4f9e-8108-532ab8875f4f
md"""
Neste caso a solução é do tipo:

$u(t) = c_1 e^{λ_1t}x_1 + c_2 e^{λ_2t}x_2$

Veja que os autovalores calculanos são normalizados. Podemos reescrevê-los como:

$x_1 = \begin{bmatrix} -1 \\ 1 \end{bmatrix} \quad e \quad x_2 = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$

Logo 

$u(t) = c_1 e^{-3t}\begin{bmatrix} -1 \\ 1 \end{bmatrix} + c_2\begin{bmatrix} 2 \\ 1 \end{bmatrix}$

Das condições de contorno, temos que, para $t=0$,

$\begin{bmatrix} 1 \\ 0 \end{bmatrix} = c_1\begin{bmatrix} -1 \\ 1 \end{bmatrix} + c_2\begin{bmatrix} 2 \\ 1 \end{bmatrix}$

$c_1 = -\frac{1}{3} \quad e \quad c_2 = \frac{1}{3}$

**Solução final:**

$u(t) = -\frac{1}{3} e^{-3t}\begin{bmatrix} -1 \\ 1 \end{bmatrix} + \frac{1}{3}\begin{bmatrix} 2 \\ 1 \end{bmatrix}$

**Pergunta: Qual o equilíbrio do sistema (no regime permanente)?**

**Pense em como a estabilidade está relacionada à parte real dos autovalores $λ_i$**

"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
"""

# ╔═╡ Cell order:
# ╟─8b11d7a0-9328-11ec-233b-8f566f2d1ad4
# ╟─1216a255-8bdb-46c6-bcc5-8fd5d48a4c32
# ╟─070aef8d-7daa-4aab-9158-1225ba104d9b
# ╟─e5347c95-2457-482b-bd44-66f5e608cf70
# ╟─adb92a4d-d7c6-43b2-994b-1ea6da81b4c7
# ╠═926c7476-0e49-41ad-9680-535b54b050bd
# ╠═bb520a45-21a5-48ee-a352-e294b1ac1589
# ╠═ddab20ac-6772-482b-9bf8-17194c76b69d
# ╟─5b53caf6-62f4-443a-947c-0c7e810f9908
# ╟─00a459b0-6b3e-455c-941f-538dac0e9640
# ╟─60baec92-d134-4d96-959c-28936c9535cf
# ╠═180055c9-c950-40b1-a517-f2f873c6e9d4
# ╠═2b4ce406-2d2c-4aca-a17b-c0685de63dc6
# ╠═cc00a39a-0947-4864-ac70-df7758444ed4
# ╟─0f5ff961-5868-4f9e-8108-532ab8875f4f
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
