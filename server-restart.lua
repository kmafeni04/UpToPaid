local luamon = require("thirdparty.luamon")

luamon(nil, function(file_path)
  os.execute("killall app")
  os.execute("nelua --cc=tcc app.nelua &")
end, {
  include_file_types = { "nelua" },
})
