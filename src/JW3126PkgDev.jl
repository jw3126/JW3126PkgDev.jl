module JW3126PkgDev
export gen
using PkgTemplates
const PT = PkgTemplates

const gen = Template(;
       plugins=[
            PT.Git(; ssh=true, manifest=true),
            PT.Develop(),
            PT.TagBot(),
            PT.TravisCI(windows=false, osx=false, linux=true),
            PT.Documenter{TravisCI}(),
            PT.GitHubActions(),
            PT.Codecov(),
       ],
   )

end # module
