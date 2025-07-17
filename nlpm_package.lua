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
      name = "http-nelua",
      repo = "https://github.com/kmafeni04/http-nelua",
      version = "#bb29b0ab9d1675d837057861bfe1cbef71636c60",
    },
    {
      name = "html-nelua",
      repo = "https://github.com/kmafeni04/html-nelua",
      version = "#653a10880a803c7df50f8723da963db124936585",
    },
    {
      name = "norm",
      repo = "https://github.com/kmafeni04/norm",
      version = "#07d4cfa6838daac4136359832ec3f91e731c20b8",
    },
    {
      name = "nelt",
      repo = "https://github.com/kmafeni04/nelt",
      version = "#dbc203873e3fc81854d162d08ff5902e05131896",
    },
  },
  scripts = {
    server_watch = "nelua --script server-watch.lua",
    nelt_watch = "nelua --script nelt-watch.lua",
    test = "nelua app.nelua -DTEST",
  },
}
