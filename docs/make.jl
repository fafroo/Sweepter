using Sweepter
using Documenter

DocMeta.setdocmeta!(Sweepter, :DocTestSetup, :(using Sweepter); recursive=true)

makedocs(;
    modules=[Sweepter],
    authors="Petr Vágner",
    repo="https://github.com/fafroo/Sweepter.jl/blob/{commit}{path}#{line}",
    sitename="Sweepter.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://fafroo.github.io/Sweepter.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fafroo/Sweepter.jl",
    devbranch="main",
)
