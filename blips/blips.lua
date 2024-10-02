
	local blips = {
		-- Added blips
	--[[	{title="Drug Run ", colour=83, id=642, x=-193.42, y=-1260.49, 31.3},
		{title="Drug Run ", colour=83, id=642, x=167.6, y=-1853.97, 24.28},
		{title="Drug Run ", colour=83, id=642, x=94.74, y=-1984.67, 20.43},
    {title="Drug Run ", colour=83, id=642, x=984.13, y=-131.22, 73.15},
    {title="Drug Run ", colour=83, id=642, x=-77.68, y=-1515.03, 37.42},
    {title="Drug Run ", colour=83, id=642, x=-714.93, y=-712.74, 29.27},
    {title="Drug Run ", colour=83, id=642, x=-621.84, y=312.62, 83.93},
    {title="Drug Run ", colour=83, id=642, x=202.48, y=62.44, 83.79},
    {title="Money Wash ", colour=1, id=628, x=720.81, y=-1203.57, 27.09},
    {title="Buyer ", colour=46, id=440, x=973.79, y=-1936.77, 32.22},
    {title="KingPin", colour=81, id=674, x=-61.31, y=-1218.6, 28.7},
    {title="Fight Club", colour=24, id=802, x=-564.7, y=275.96, 83.11},
		{title="Ice Box", colour=4, id=682, x=-1231.75, y=-799.37, 17.84},
    {title="Auto Exotic", colour=40, id=446, x=540.6, y=-183.45, 54.49},
    {title="42Media Plaza", colour=51, id=136, x=201.26, y=-25.68, 69.89},
    {title="Gabreilas market", colour=4, id=59, x=53.42, y=-1478.76, 29.29},
    {title="CoolBeans", colour=4, id=214, x=-1206.11, y=-1134.05, 7.84},
    {title="White Widow", colour=0, id=496, x=201.51, y=-239.31, 128.32},
    {title="Chop Shop", colour=44, id=643, x=-419.87, y=-1676.03, 19.03},
    {title="Coke House", colour=0, id=514, x=984.05, y=-99.19, 74.85},
    {title="Coke Plants", colour=0, id=514, x=-1730.04, y=-190.7, 58.32},
    {title="Coke sell", colour=0, id=514, x=944.07, y=-1697.54, 30.09},
    {title="BMF", colour=40, id=303, x=103.85, y=-1940.65, 20.8},
    {title="BMk", colour=40, id=439, x=342.22, y=-2045.0, 21.4},
    {title="BWA", colour=43, id=207, x=-27.49, y=-1527.74, 30.34},
--]]
  }  

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


