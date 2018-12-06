model_path=#("H:\CUN\export\LightCage.FBX","H:\CUN\export\07studyspainting.FBX")
pos_x=#(256,450)
pos_y=#(256,500)
pos_z=#(256,250)


--light_name="mylight1"


print([a,b,c])

fn setmodel model num x y z=(

	if (doesfileexist model) do
		importFile model
	
	geometry[num].position=[x,y,z]
	
)

for i=1 to model_path.count do
	setmodel model_path[i] i pos[i]
--a = python.Execute("2+3 ;return 4")
print (geometry)
print(geometry[2])

--openfile "d:\file\name_position.xlsx"

--omnilight pos:model_position.position castShadows:on raytracedshadows:on name:"mylight"
--$mylight.position=$.position+model_position.position
