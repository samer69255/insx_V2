require 'json'
files = Dir.glob("*.json")
j(files)


def j(files)
	$fh = "./insx.json"
	a = Array.new
	for i in 0 .. (files.length-1)
		data = File.read(files[i])
		data = JSON.parse(data)
		a.concat(data)
	end
	File.open($fh, 'w') { |file| file.write(a.to_json) }

	$fh.close()
end

def txt()

end
