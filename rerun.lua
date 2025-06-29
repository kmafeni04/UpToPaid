local luamon = require("thirdparty.luamon")

luamon(nil, function(file_path)
  os.execute("killall app")
  if file_path and file_path:match("%.nelt$") then
    os.execute("nelua --cc=tcc nelt-compile.nelua " .. file_path)
  end
  os.execute("nelua --cc=tcc app.nelua &")
end, {
  include_file_types = { "nelua", "nelt" },
})
