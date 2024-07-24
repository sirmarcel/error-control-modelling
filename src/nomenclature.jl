### A Pluto.jl notebook ###
# v0.19.43

using Markdown
using InteractiveUtils

# ╔═╡ 6a1b2185-a0de-45f1-8d73-ab30f404c8c2
begin
	using HypertextLiteral
	using PlutoUI
	using PlutoTeachingTools

	RobustLocalResource("https://teaching.matmat.org/error-control/latex_macros.md", "latex_macros.md")
	Markdown.parse(read("latex_macros.md", String))
end

# ╔═╡ 48662bbd-d763-4e6b-957b-f4d6a783afc5
md"# Nomenclature"

# ╔═╡ 506de2af-faea-42e4-8f14-166a9ad600ed
md"""
Latin   | alphabet
--- | :---
$A$ 			| Generic matrix 
$\opA$ 			| Generic operator
$\bloch$ 	    | Bloch-Floquet transform
$\mathbb B$ 	| Plane wave basis
$\mathscr B$ 	| Set of all bounded operators
$\contour$ 		| Contour in the complex plane
$D^\alpha$ 		| Weak derivative
$D(\opA)$ 		| Domain of $\opA$
$\eigenspace _A(\lambda)$ | Eigenspace of $A$ associated with eigenvalue $\lambda$.
$G(\opA)$ 		| Graph of $\opA$
$H$    			| Sobolev space (see function spaces below)
$\opH$ 			| Schrödinger operator / hamiltonian ($- \laplacian / 2 + V$)
$\opH_k$ 		| Bloch fiber
$\hilbert$ 		| Hilbert space
$I$ 			| Identity matrix
$\mathbb K$ 	| $k$-grid or $k$-point mesh
$\mathbb L$ 	| Lattice
$\mathbb L^*$   | Reciprocal lattice
$q_A(u)$ 		| Quadratic form ($\langle u, Au \rangle$)
$Q(\opA)$ 		| Form domain of $\opA$
$a_A(u,v)$ 		| Sesquilinear form ($\langle u, Av \rangle$)
$R_A(u)$ 		| Rayleigh quotient ($\langle u , Au \rangle / \langle u, u \rangle$)
$R_z(A)$ 		| Resolvent ($(A-z I)^{-1}$)
$\mathcal T_R$ 	| Translation operator by $R$
"""

# ╔═╡ fc3cda3f-8ba8-4911-a8a4-ec46cf1b4dfb
md"""
Here is a non-comprehensive list of the notation used in the couse, with an emphasis on course-specific concepts, possible sources of confusion, and notation differing from typical physics / engineering notation.
"""

# ╔═╡ 7f43fd45-f6a5-449b-8401-627dcb047c80
md"""
Greek | alphabet
--- | :---
$\Delta$ 			| Laplace operator ($\text{div grad}$)
$\resolvent$ 		| Resovlent set
$\spectralradius$ 	| Spectral radius
$\sigma$ 			| Spectrum
$\Sigma$ 		| Bottom of the essential spectrum
"""

# ╔═╡ 1bb4d24e-f93c-4f9a-aaa3-1f799b5e2953
md"""
Other | - 
--- | :---
$\bullet ^*$ 				| Adjoint (operators)
$\tilde \bullet$ 			| Approximation of $\bullet$
$\overline{\bullet}$ 		| Complex conjugate (scalars), closure (sets)
$\dot \cup$ 				| Disjoint union
$\varnothing$ 				| Empty set
$\indicator_\Omega$  		| Indicator function over set $\Omega$
$\langle \bullet,\bullet \rangle$ | Inner product
$(\bullet,\bullet)$ 		| Open interval
$[\bullet, \bullet ]$ 		| Closed interval
$\leq$ 						| Vector subspace (sets), less or equal to (scalars)
$\to$ 						| Strong convergence
$\rightharpoonup$ 			| Weak convergence
"""

# ╔═╡ a1fc69f5-ce2e-4910-af4c-9db644a4dad5
md"""
Function (and other) spaces

Space | Definition | Hilbert space ?
--- | :--- | ---
$V_0$ 			| Space $V$ restricted to functions with compact support.
$C^0(\Omega,Y)$ |  $\{ f : \Omega \to Y \mid f \text{ is continuous} \}$
$C^1(\Omega,Y)$ |  $\{ f : \Omega \to Y \mid f' \text{ is continuous} \}$
$C^k(\Omega,Y)$ |  $\{ f : \Omega \to Y \mid f \text{ is infinitely differentiable} \}$
$C^\infty(\Omega,Y)$ |  $\{ f : \Omega \to Y \mid f^{(k)} \text{ is continuous} \}$
$L^2(\Omega)$ 	| $\{f : \Omega \to \mathbb C \mid \int_{\Omega} \vert f (x) \vert ^2 dx < \infty \}$ | ✓
$L^p(\Omega)$ 	| $\{f : \Omega \to \mathbb C \mid \int_{\Omega} \vert f (x) \vert ^p dx < \infty \}$ 
$L^p_{loc}(\Omega)$ 	| $\left \{  f : \Omega \rightarrow \mathbb{C} \ \middle \vert  \   f\rvert_K \in L^{p}(K) \quad \forall K \in \Omega, K \text { compact} \right \}$
$L^2_{per} (\Omega)$ | $\{ f \in L^2_{loc} (\mathbb R^3) \vert f \text{ is } \mathbb L \text{ periodic and } \mathbb L \text{ has unit cell } \Omega \}$ | ✓
$L^2_{qp} (\Omega^*, L^2_{per}(\Omega))$ | $\{ \mathbb R^d \ni k \mapsto u_k \in L^2_{per}(\Omega)  \vert \int_{\Omega^*} \| u_k \|^2_{L^2_{per}(Ω)} \ dk < ∞ \ \text{ and } u_{k+G} = u_k e^{-i G ⋅ x} \}$ | ✓
$\mathscr L(V)$ | $\{ f : V \to V \mid f \text{ linear} \}$
$\ell^2(\mathbb C)$ | $\{z : \mathbb N \to \mathbb C  \mid \ \sum_{n = 0}^\infty \vert z_i \vert^2 < \infty \}$ | ✓
$\ell^p(\mathbb C)$ | $\{z : \mathbb N \to \mathbb C  \mid \ \sum_{n = 0}^\infty \vert z_i \vert^p < \infty \}$
$H^n(\Omega)$ | $\{ f \in L^2(\Omega) \mid D^\alpha f \in L^2(\Omega) \ \forall \alpha \text{ s.t. } \Vert \alpha \Vert _1 \leq n \}$  | ✓
$H^S_{per} (\Omega)$ | $\{ f \in L^2_{per} (\Omega)  \vert \sum_{G \in \mathbb L^*} (1 + \vert G \vert^2)^S  \vert \hat f_G \vert^2 < \infty \}$ | ✓

Note that $\Omega$ here is used in most cases to denote the set on which the function is defined. 
However, in the case of periodic function spaces ($L^2_{per}(\Omega), H^S_{per}(\Omega)$), it denotes the unit cell.
"""

# ╔═╡ 14976bf5-5f50-4920-b8d1-632c440be175
md"""
Inner product of Hilbert spaces (for their definitions, see the table above).
To obtain the associated norm, recall $\| f \| = \sqrt{\langle f,f \rangle}$.

Space  | Inner Product $\langle f,g \rangle$ 
--- |  :--- | 
$L^2(\Omega)$ 	| $\int_\Omega \overline{f(x)} g(x) \ dx$
$\ell^2(\mathbb R)$ | $\sum_{i=0}^\infty \overline{f_i} g_i$ 
$H^n(\Omega)$ | $\sum_{\Vert \alpha \Vert _1 \leq n} \langle D^\alpha f, D^\alpha g \rangle_{L^2}$ 
$L^2_{per} (\Omega)$ | $\int_{\Omega} \overline{f(x)} g(x) dx$
$L^2_{qp} (\Omega^*, H^1_{per}(\Omega))$ | $\frac1{\vert \Omega^*\vert} \int_{\Omega^*} \langle f_k, g_k \rangle_{L^2_{per}(\Omega)} dk$
"""

# ╔═╡ a77b7363-f50f-45c9-a17b-d474b5b14baf
TableOfContents()

# ╔═╡ 7c87a6e1-dfe6-4bc1-8857-3b4a55aa6c0b
let
	RobustLocalResource("https://teaching.matmat.org/error-control/sidebar.md", "sidebar.md")
	Sidebar(toc, ypos) = @htl("""<aside class="plutoui-toc aside indent"
		style='top:$(ypos)px; max-height: calc(100vh - $(ypos)px - 55px);' >$toc</aside>""")
	
	Sidebar(Markdown.parse(read("sidebar.md", String)), 75)
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
PlutoTeachingTools = "661c6b06-c737-4d37-b85c-46df65de6f69"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
HypertextLiteral = "~0.9.5"
PlutoTeachingTools = "~0.2.15"
PlutoUI = "~0.7.59"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.4"
manifest_format = "2.0"
project_hash = "72c07b07bb225d1401f37584678b084190a9d3b1"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.CodeTracking]]
deps = ["InteractiveUtils", "UUIDs"]
git-tree-sha1 = "c0216e792f518b39b22212127d4a84dc31e4e386"
uuid = "da1fd8a2-8d9e-5ec2-8556-3022fb5608a2"
version = "1.3.5"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.1.1+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Format]]
git-tree-sha1 = "9c68794ef81b08086aeb32eeaf33531668d5f5fc"
uuid = "1fa38f19-a742-5d3f-a2b9-30dd87b9d5f8"
version = "1.3.7"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JuliaInterpreter]]
deps = ["CodeTracking", "InteractiveUtils", "Random", "UUIDs"]
git-tree-sha1 = "5d3a5a206297af3868151bb4a2cf27ebce46f16d"
uuid = "aa1ae85d-cabe-5617-a682-6adf51b2e16a"
version = "0.9.33"

[[deps.LaTeXStrings]]
git-tree-sha1 = "50901ebc375ed41dbf8058da26f9de442febbbec"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.1"

[[deps.Latexify]]
deps = ["Format", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Requires"]
git-tree-sha1 = "5b0d630f3020b82c0775a51d05895852f8506f50"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.16.4"

    [deps.Latexify.extensions]
    DataFramesExt = "DataFrames"
    SymEngineExt = "SymEngine"

    [deps.Latexify.weakdeps]
    DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
    SymEngine = "123dc426-2d89-5057-bbad-38513e3affd8"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.6.4+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoweredCodeUtils]]
deps = ["JuliaInterpreter"]
git-tree-sha1 = "0b898aba6cb0b01fb96245fa5375accb651a241a"
uuid = "6f1432cf-f94c-5a45-995e-cdbf5db27b0b"
version = "3.0.0"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "2fa9ee3e63fd3a4f7a9a4f4744a52f4856de82df"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.13"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+4"

[[deps.OrderedCollections]]
git-tree-sha1 = "dfdf5519f235516220579f949664f1bf44e741c5"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.3"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.10.0"

[[deps.PlutoHooks]]
deps = ["InteractiveUtils", "Markdown", "UUIDs"]
git-tree-sha1 = "072cdf20c9b0507fdd977d7d246d90030609674b"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0774"
version = "0.0.5"

[[deps.PlutoLinks]]
deps = ["FileWatching", "InteractiveUtils", "Markdown", "PlutoHooks", "Revise", "UUIDs"]
git-tree-sha1 = "8f5fa7056e6dcfb23ac5211de38e6c03f6367794"
uuid = "0ff47ea0-7a50-410d-8455-4348d5de0420"
version = "0.1.6"

[[deps.PlutoTeachingTools]]
deps = ["Downloads", "HypertextLiteral", "LaTeXStrings", "Latexify", "Markdown", "PlutoLinks", "PlutoUI", "Random"]
git-tree-sha1 = "5d9ab1a4faf25a62bb9d07ef0003396ac258ef1c"
uuid = "661c6b06-c737-4d37-b85c-46df65de6f69"
version = "0.2.15"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "ab55ee1510ad2af0ff674dbcced5e94921f867a9"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.59"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.Revise]]
deps = ["CodeTracking", "Distributed", "FileWatching", "JuliaInterpreter", "LibGit2", "LoweredCodeUtils", "OrderedCollections", "Pkg", "REPL", "Requires", "UUIDs", "Unicode"]
git-tree-sha1 = "677b65e17aeb6b4a0be1982e281ec03b0f55155c"
uuid = "295af30f-e4ad-537b-8983-00126c2a3abe"
version = "3.5.16"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╟─48662bbd-d763-4e6b-957b-f4d6a783afc5
# ╟─6a1b2185-a0de-45f1-8d73-ab30f404c8c2
# ╟─506de2af-faea-42e4-8f14-166a9ad600ed
# ╟─fc3cda3f-8ba8-4911-a8a4-ec46cf1b4dfb
# ╟─7f43fd45-f6a5-449b-8401-627dcb047c80
# ╟─1bb4d24e-f93c-4f9a-aaa3-1f799b5e2953
# ╟─a1fc69f5-ce2e-4910-af4c-9db644a4dad5
# ╟─14976bf5-5f50-4920-b8d1-632c440be175
# ╟─a77b7363-f50f-45c9-a17b-d474b5b14baf
# ╟─7c87a6e1-dfe6-4bc1-8857-3b4a55aa6c0b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
