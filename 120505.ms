model_path="H:\CUN\export\changjing\*.FBX" 
model_position=[5000,5000,5000]

pluginManager.loadClass FBXIMPORTER
FBXImporterGetParam "Import|IncludeGrp|Animation|Markers"true


fn setmodel model_path model_position=(

	fbx_files=getFiles model_path

	for f in fbx_files do
	(
		if (doesfileexist f) do
			importFile f 
		
		--for geo in $ do
		--(
		--	geo.name=filterstring(geo as string)
		--)
	)


)





importFile "H:\CUN\export\changjing\LightCage.FBX"
setmodel "H:\CUN\export\changjing\LightCage.FBX" model_position
$LightCage.position=[5000,0,0]


setmodel "H:\CUN\export\changjing\door_single.FBX" model_position
$door_single.position=[0,5000,0]


global illumination
--Noise Filtering=None
--User-adjusted ambient light


for i in cameras do
	delete i


omnilight pos:[1016,4560,2200] castShadows:on raytracedshadows:on 

myCamera=freecamera pos:[1240,5100,1800] 



$Camera001.fov=90.0
renderWidth=1024
renderHeight=1024
renderSaveFile=true
renderers.current=Mental_Ray_Renderer ()
renderers.current.IlluminationCacheMode=0



p1=render camera:$Camera001 frame:1 outputfile:("camera_1.png")

rotate $Camera001(eulerAngles 90 0 0)

p2=render camera:$Camera001 frame:1 outputfile:("camera_2.png")

rotate $Camera001(eulerAngles 90 0 0)

p3=render camera:$Camera001 frame:1 outputfile:("camera_3.png")

rotate $Camera001(eulerAngles 90 0 0)

p4=render camera:$Camera001 frame:1 outputfile:("camera_4.png")

rotate $Camera001(eulerAngles 0 0 90)

p5=render camera:$Camera001 frame:1 outputfile:("camera_5.png")

rotate $Camera001(eulerAngles 0 180 0)

p6=render camera:$Camera001 frame:1 outputfile:("camera_6.png")
£©
