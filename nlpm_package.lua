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
      version = "#7b03ae14fb011d93173e8e20c752fc2c1426d13c",
    },
    {
      name = "nttp-datastar-sdk",
      repo = "https://github.com/kmafeni04/nttp-datastar-sdk",
      version = "#eaf6f0851e5049a2e7d774dd97c410a2ef8d4f8b",
    },
    {
      name = "nttp-mail",
      repo = "https://github.com/kmafeni04/nttp-mail",
      version = "#53236f5ab62fd8e7330c0196416f0c46fe0081be",
    },
    {
      name = "html-nelua",
      repo = "https://github.com/kmafeni04/html-nelua",
      version = "#e7dd27e994af8274a38a863b2d0817e01e101028",
    },
    {
      name = "norm",
      repo = "https://github.com/kmafeni04/norm",
      version = "#921e3e3aed7b5752ddb6fca58b1339d531417bca",
    },
    {
      name = "nelt",
      repo = "https://github.com/kmafeni04/nelt",
      version = "#dbc203873e3fc81854d162d08ff5902e05131896",
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
    server_watch = "nelua --script server-watch.lua",
    nelt_watch = "nelua --script nelt-watch.lua",
    test = "nelua app.nelua -DTEST",
  },
}
