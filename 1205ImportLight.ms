model_path="H:\CUN\export\LightCage.FBX"
model_name="\LightCage"
model2_name="\changjing"

light_name="mylight1"
--model_position=point3 pos:[5000,5000,5000] 

x=5000
y=4000
z=3000

print([a,b,c])

fn setmodel model_path a b c=(

	if (doesfileexist model_path) do
		importFile model_Path 
	
	geometry[2].position=[a,b,c]
	--model_position as position 

	
	--omnilight pos:model_position.position castShadows:on raytracedshadows:on name:"mylight"
	--$mylight.position=$.position+model_position.position
)

setmodel model_path x y z
--a = python.Execute("2+3 ;return 4")
print (geometry)
print(geometry[2])

--openfile "d:\file\name_position.xlsx"
