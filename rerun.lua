local luamon = require("thirdparty.luamon")

luamon(nil, function()
  os.execute("killall main")
  os.execute("nelua --cc=tcc nelt-compile.nelua")
  os.execute("nelua --cc=tcc main.nelua &")
end, {
  include_file_types = { "nelua", "nelt" },
})
