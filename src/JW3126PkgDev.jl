module JW3126PkgDev
export gen
using PkgTemplates

const DEFAULT_TEMPLATE = Template(;
       license="MIT",
       ssh=true,         
       plugins=[
           TravisCI(),   
           Codecov(),    
           GitHubPages(),
       ],
   )

function gen(name, template=DEFAULT_TEMPLATE)
    PkgTemplates.generate(template, name)
end

end # module
