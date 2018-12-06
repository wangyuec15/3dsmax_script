model_path="H:\CUN\export\changjing\*.FBX" 
model_position=[5000,5000,5000]

fn setmodel model_path model_position=(

	fbx_files=getFiles model_path

	for f in fbx_files do
	(
		if (doesfileexist f) do
			importFile f 
	)
	$.position=model_position

)
