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
      version = "#d8406960aca9b3ca683c5993e0b12d604f644baa",
    },
    {
      name = "nttp-datastar-sdk",
      repo = "https://github.com/kmafeni04/nttp-datastar-sdk",
      version = "#89c651e38139106ffa33fa25fb59142dcaea72fb",
    },
    {
      name = "html-nelua",
      repo = "https://github.com/kmafeni04/html-nelua",
      version = "#653a10880a803c7df50f8723da963db124936585",
    },
    {
      name = "norm",
      repo = "https://github.com/kmafeni04/norm",
      version = "#4ba6e028e069059c907859cd727307ed20ac73a7",
    },
    {
      name = "nelt",
      repo = "https://github.com/kmafeni04/nelt",
      version = "#dbc203873e3fc81854d162d08ff5902e05131896",
    },
    {
      name = "dotenv-nelua",
      repo = "https://github.com/kmafeni04/dotenv-nelua",
      version = "#c1d05bea418212197b9bb2a9fb7d9fe8ca50e342",
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
