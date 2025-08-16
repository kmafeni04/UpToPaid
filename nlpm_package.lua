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
      version = "#44f525180013ab811366190db4f42300725dba62",
    },
    {
      name = "nttp-datastar-sdk",
      repo = "https://github.com/kmafeni04/nttp-datastar-sdk",
      version = "#7f94a002ebc8d3f71d5297019c4c351b2ad997ef",
    },
    {
      name = "nttp-mail",
      repo = "https://github.com/kmafeni04/nttp-mail",
      version = "#12932d60b6078a3005d05496961697a07bdd7633",
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
