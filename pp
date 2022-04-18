 gmp = game.Players.LocalPlayer.Character
 
local unanchoredparts = {}
		local movers = {}
		local tog = true
		local move = false
		local Player = game:GetService("Players").LocalPlayer
		local Character = Player.Character
		local mov = {};
		local mov2 = {};

		local Hats = {pp1  = Character:WaitForChild("DreamCap"),  --here place ur hats
        pp2  = Character:WaitForChild("gradcap_18"), 
        pp3  = Character:WaitForChild("ChampDevAccessory"), 
        pp4  = Character:WaitForChild("ChampAdminAccessory"), 
		}


		--Dont touch below

		for i,v in next, Hats do
			v.Handle.AccessoryWeld:Remove()
			for _,mesh in next, v:GetDescendants() do
				if mesh:IsA("Mesh") or mesh:IsA("Mesh") then -- change mesh to Specialmesh if u want to destroy the mesh
					mesh:Remove()
				end
			end
		end

		function ftp(str)
			local pt = {};
			if str ~= 'me' and str ~= 'random' then
				for i, v in pairs(game.Players:GetPlayers()) do
					if v.Name:lower():find(str:lower()) then
						table.insert(pt, v);
					end
				end
			elseif str == 'me' then
				table.insert(pt, plr);
			elseif str == 'random' then
				table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
			end
			return pt;
		end

		local function align(i,v)
			local att0 = Instance.new("Attachment", i)
			att0.Position = Vector3.new(0,0,0)
			local att1 = Instance.new("Attachment", v)
			att1.Position = Vector3.new(0,0,0)
			local AP = Instance.new("AlignPosition", i)
			AP.Attachment0 = att0
			AP.Attachment1 = att1
			AP.RigidityEnabled = false
			AP.ReactionForceEnabled = false
			AP.ApplyAtCenterOfMass = false
			AP.MaxForce = 9999999
			AP.MaxVelocity = math.huge
			AP.Responsiveness = 65
			local AO = Instance.new("AlignOrientation", i)
			AO.Attachment0 = att0
			AO.Attachment1 = att1
			AO.ReactionTorqueEnabled = false
			AO.PrimaryAxisOnly = false
			AO.MaxTorque = 9999999
			AO.MaxAngularVelocity = math.huge
			AO.Responsiveness = 50
		end


		--Dont touch above


		align(Hats.pp1.Handle, Character["Torso"])
		align(Hats.pp2.Handle, Character["Torso"])
		align(Hats.pp3.Handle, Character["Torso"])
		align(Hats.pp4.Handle, Character["Torso"])


     Hats.pp1.Handle.Attachment.Rotation = Vector3.new(0,0,0) 
     Hats.pp2.Handle.Attachment.Rotation = Vector3.new(0,0,0) 
     Hats.pp3.Handle.Attachment.Rotation = Vector3.new(0,0,0) 
     Hats.pp4.Handle.Attachment.Rotation = Vector3.new(0,0,0) 
		

	    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
	    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4" 
	    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
	    Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6" 

        Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0, 0, 0)
        Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0, 0, 0)
        Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(0, 0, 0)
        Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0, 0, 0)   
        
        --                                     x  y  z
        --ok so hi ka if u dont understand the 0, 0, 0 the first one is x second y and third z || x goes forward and backwards
        -- y goes up and down || z goes left and right easy right? now go make the scripts!
        --pp1
		 Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(0, 3, 0) --position
		 Character:WaitForChild("Torso").Attachment3.Rotation = Vector3.new(0, 0, 0) --rotation
		 --pp2
		 Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0, 7, 0) --position
		 Character:WaitForChild("Torso").Attachment4.Rotation = Vector3.new(0, 0, 0) --rotation

		 Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(2, 0, 0) --position
		 Character:WaitForChild("Torso").Attachment5.Rotation = Vector3.new(0, 0, 0) --rotation

		 Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-2, 0, 0) --position
		 Character:WaitForChild("Torso").Attachment6.Rotation = Vector3.new(0, 0, 0) --rotation
		-- Position or Rotation
    wait(.35)

    gmp["DreamCap"].Handle.Anchored = true
    gmp["gradcap_18"].Handle.Anchored = true
    gmp["ChampDevAccessory"].Handle.Anchored = true
    gmp["ChampAdminAccessory"].Handle.Anchored = true
    
    
game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed ==  "z" then -- key to play animation
     if toggle == false then

           toggle = true
    gmp["DreamCap"].Handle.Anchored = true
    gmp["gradcap_18"].Handle.Anchored = true
    gmp["ChampDevAccessory"].Handle.Anchored = true
    gmp["ChampAdminAccessory"].Handle.Anchored = true
 else
     
	              toggle = false
     end
    
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed ==  "x" then -- key to play animation
     if toggle == false then

           toggle = true
    gmp["DreamCap"].Handle.Anchored = false
    gmp["gradcap_18"].Handle.Anchored = false
    gmp["ChampDevAccessory"].Handle.Anchored = false
    gmp["ChampAdminAccessory"].Handle.Anchored = false
 else
     
	              toggle = false
     end
    
    end
end)
