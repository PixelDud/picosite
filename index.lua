--[[pod_format="raw",created="2024-04-01 05:45:05",modified="2024-04-01 05:55:08",revision=3]]
--[[	Thanks for using PicoNet Sitebuilder! I look forward
	to seeing your picosite! In order to make this available
	on PicoNet Explorer, you'll need to upload this lua file
	somewhere on the internet that you can get a link to it.
	Then, you'll want to go to the following thread:
	
		https://www.lexaloffle.com/bbs/?tid=140960
	
	and post your link based on the format provided there.
	it's  very possible that this format could change slightly
	and so I will not be listing that here just yet.
]]

	p = {
	title="PixelDud ",
	g=create_gui({
		x=0,y=0,
		width=300,height=300,
		fgcol = 0x090d
	}),
	copybuttons = {},
	init = function(self,explorer)
		local page = self
		add(self.copybuttons, self.g:attach({
			x=2, y=2, width=30, height=30,
			event = function(self,msg)
				if(msg.event == "release") then
					set_clipboard("--[[pod,pod_type=\"image\"]]unpod(\""..page.image5_raw.."\")")
					notify("image userdata added to clipboard")
				end
			end
		}))
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		cls(0)
		rectfill(0,0,300,32,5)
		print("PixelDud's Picosite ",100,12,7)
		print("				Hello there!\nI'm PixelDud, and this is my Picosite!\nAs I make Picotron projects, they'll\nend up both here, and on the BBS. ",50,33,7)
		palt(0)
		palt(0, true)
		sspr(self.image5, 0, 0, 30,30,2,2,30,30)
		palt()
		
	end,
	update = function(self,explorer)
		
	end,
	image5_raw = "b64:bHo0AIMAAACMAAAA8CdweHUAQyAeHgSgAl8YAvADAr4C4P4AsAL_AgKAAv4EAmAC-gYCUP4IQI54jiACjniOAhCeeJ4EAKIAAp443gKuOP4KAwAwuP4CAwDBbgKeuF4CAF44-gIQBQBwAk44-gECIAYAQED_CFBQABBgWgAQgGQA0LD_AOACvgLwAwJeAqA=",
	image5 = unpod("b64:bHo0AIMAAACMAAAA8CdweHUAQyAeHgSgAl8YAvADAr4C4P4AsAL_AgKAAv4EAmAC-gYCUP4IQI54jiACjniOAhCeeJ4EAKIAAp443gKuOP4KAwAwuP4CAwDBbgKeuF4CAF44-gIQBQBwAk44-gECIAYAQED_CFBQABBgWgAQgGQA0LD_AOACvgLwAwJeAqA=")
}