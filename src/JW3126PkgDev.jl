module JW3126PkgDev
export gen
using PkgTemplates
const PT = PkgTemplates

const gen = Template(;
       plugins=[
            PT.Git(; ssh=true, manifest=false),
            PT.Develop(),
            PT.TagBot(),
            # PT.TravisCI(windows=false, osx=false, linux=true),
            PT.Documenter{GitHubActions}(),
            PT.GitHubActions(),
            PT.Codecov(),
       ],
   )

end # module
