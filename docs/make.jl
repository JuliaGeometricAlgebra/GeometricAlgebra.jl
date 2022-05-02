# --- Setup

# Imports
using Documenter
using GeometricAlgebra

# Set up DocMeta
DocMeta.setdocmeta!(
    GeometricAlgebra, :DocTestSetup, :(using GeometricAlgebra); recursive=true
)

# --- Generate documentation

makedocs(;
    modules=[GeometricAlgebra],
    authors="JuliaGeometricAlgebra Group and Contributors",
    repo="https://github.com/JuliaGeometricAlgebra/GeometricAlgebra.jl.git/blob/{commit}{path}#{line}",
    sitename="GeometricAlgebra",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://github.com/JuliaGeometricAlgebra/GeometricAlgebra.jl.git/stable",
        assets=String[],
    ),
    pages=["Home" => "index.md"],
)

# --- Deploy documentation

deploydocs(;
    repo="github.com/JuliaGeometricAlgebra/GeometricAlgebra.jl.git", devbranch="main"
)
