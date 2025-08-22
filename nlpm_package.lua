---@class PackageDependency
---@field name string package name as it will be used in file gen
---@field repo string git repo
---@field version? string git hash(#) or tag(v), defaults to "#HEAD"

---@class Package
---@field dependencies? PackageDependency[] List of package dependencies
---@field scripts? table<string, string> scripts that can be called with `nlpm run`

---@type Package
return {
  dependencies = {
    {
      name = "nttp",
      repo = "https://github.com/kmafeni04/nttp",
      version = "#73d18785fb953b4e61b74eee4e99af831de7d453",
    },
    {
      name = "nttp-datastar-sdk",
      repo = "https://github.com/kmafeni04/nttp-datastar-sdk",
      version = "#509d74d7ceb7b57737c6d5bf446afaafea908b6f",
    },
    {
      name = "nttp-mail",
      repo = "https://github.com/kmafeni04/nttp-mail",
      version = "#8ebdb742991efa81eb79235a6afc2113b1e0d437",
    },
    {
      name = "norm",
      repo = "https://github.com/kmafeni04/norm",
      version = "#0155543d24951fb112a3ea02e14bd3134023cf27",
    },
    {
      name = "nelt",
      repo = "https://github.com/kmafeni04/nelt",
      version = "#dbc203873e3fc81854d162d08ff5902e05131896",
    },
    {
      name = "html-nelua",
      repo = "https://github.com/kmafeni04/html-nelua",
      version = "#26b86f5f64421a866832f801514931cf19fff2ca",
    },
    {
      name = "dotenv-nelua",
      repo = "https://github.com/kmafeni04/dotenv-nelua",
      version = "#bae178f2f6929b5ef3404890df810326f4ff0baf",
    },
    {
      name = "crypt-bindings-nelua",
      repo = "https://github.com/kmafeni04/crypt-bindings-nelua",
      version = "#68c2d78f5d8c1c4d3069da09817c1194abee7019",
    },
    {
      name = "fidimon",
      repo = "https://github.com/kmafeni04/fidimon",
      version = "#a6ed34e9827fb3a3d1b087c024062a2ec5eb7571",
    },
  },
  scripts = {
    server = "nelua --script server-watch.lua",
    nelt = "nelua --script nelt-watch.lua",
    test = "nelua app.nelua -DTEST",
  },
}
