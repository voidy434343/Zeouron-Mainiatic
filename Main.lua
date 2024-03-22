for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ProjectZeouron" then
    	v:Destroy()
    end
end

local Data = {
    Font = Enum.Font.Arcade,
    Color = Color3.fromRGB(130, 35, 175),
    DarkC = Color3.fromRGB(53.5, 25, 62),
    DarkerC = Color3.fromRGB(53.5 /1.5, 25 /1.5, 62 /1.5),
    BlackC = Color3.fromRGB(30,30,30),
    BgC = Color3.fromRGB(10,10,10),
    Icon = "http://www.roblox.com/asset/?id=16096831367"
}

local SupportedGames = {
    {
        ID = 6933626061,
        GOTOID = 6933626061,
        GameName = "Tlk Prison",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Tlk%20prison%20obf.txt'))()
        end
    },
	{
        ID = 6312903733,
        GOTOID = 5561268850,
        GameName = "RGD",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/RGD.lua'))()
        end
    },
	{
        ID = 14052406783,
        GOTOID = 14052406783,
        GameName = "Tlk remake",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Tlk%20Prison%20RS.lua'))()
        end
    }
}

Icons = {
		["CD"] = "rbxassetid://7734110220",
		activity = "rbxassetid://7733655755",
		airplay = "rbxassetid://7733655834",
		["alarm-check"] = "rbxassetid://7733655912",
		["alarm-clock"] = "rbxassetid://7733656100",
		["alarm-clock-off"] = "rbxassetid://7733656003",
		["alarm-minus"] = "rbxassetid://7733656164",
		["alarm-plus"] = "rbxassetid://7733658066",
		album = "rbxassetid://7733658133",
		["alert-circle"] = "rbxassetid://7733658271",
		["alert-octagon"] = "rbxassetid://7733658335",
		["alert-triangle"] = "rbxassetid://7733658504",
		["align-center"] = "rbxassetid://7733909776",
		["align-center-horizontal"] = "rbxassetid://8997380477",
		["align-center-vertical"] = "rbxassetid://8997380737",
		["align-end-horizontal"] = "rbxassetid://8997380820",
		["align-end-vertical"] = "rbxassetid://8997380907",
		["align-horizonal-distribute-center"] = "rbxassetid://8997381028",
		["align-horizonal-distribute-end"] = "rbxassetid://8997381144",
		["align-horizonal-distribute-start"] = "rbxassetid://8997381290",
		["align-horizontal-justify-center"] = "rbxassetid://8997381461",
		["align-horizontal-justify-end"] = "rbxassetid://8997381549",
		["align-horizontal-justify-start"] = "rbxassetid://8997381652",
		["align-horizontal-space-around"] = "rbxassetid://8997381738",
		["align-horizontal-space-between"] = "rbxassetid://8997381854",
		["align-justify"] = "rbxassetid://7733661326",
		["align-left"] = "rbxassetid://7733911357",
		["align-right"] = "rbxassetid://7733663582",
		["align-start-horizontal"] = "rbxassetid://8997381965",
		["align-start-vertical"] = "rbxassetid://8997382085",
		["align-vertical-distribute-center"] = "rbxassetid://8997382212",
		["align-vertical-distribute-end"] = "rbxassetid://8997382326",
		["align-vertical-distribute-start"] = "rbxassetid://8997382428",
		["align-vertical-justify-center"] = "rbxassetid://8997382502",
		["align-vertical-justify-end"] = "rbxassetid://8997382584",
		["align-vertical-justify-start"] = "rbxassetid://8997382639",
		["align-vertical-space-around"] = "rbxassetid://8997382708",
		["align-vertical-space-between"] = "rbxassetid://8997382793",
		anchor = "rbxassetid://7733911490",
		aperture = "rbxassetid://7733666258",
		archive = "rbxassetid://7733911621",
		["arrow-big-down"] = "rbxassetid://7733668653",
		["arrow-big-left"] = "rbxassetid://7733911731",
		["arrow-big-right"] = "rbxassetid://7733671493",
		["arrow-big-up"] = "rbxassetid://7733671663",
		["arrow-down"] = "rbxassetid://7733672933",
		["arrow-down-circle"] = "rbxassetid://7733671763",
		["arrow-down-left"] = "rbxassetid://7733672282",
		["arrow-down-right"] = "rbxassetid://7733672831",
		["arrow-left"] = "rbxassetid://7733673136",
		["arrow-left-circle"] = "rbxassetid://7733673056",
		["arrow-left-right"] = "rbxassetid://8997382869",
		["arrow-right"] = "rbxassetid://7733673345",
		["arrow-right-circle"] = "rbxassetid://7733673229",
		["arrow-up"] = "rbxassetid://7733673717",
		["arrow-up-circle"] = "rbxassetid://7733673466",
		["arrow-up-left"] = "rbxassetid://7733673539",
		["arrow-up-right"] = "rbxassetid://7733673646",
		asterisk = "rbxassetid://7733673800",
		["at-sign"] = "rbxassetid://7733673907",
		award = "rbxassetid://7733673987",
		axe = "rbxassetid://7733674079",
		banknote = "rbxassetid://7733674153",
		["bar-chart"] = "rbxassetid://7733674319",
		["bar-chart-2"] = "rbxassetid://7733674239",
		battery = "rbxassetid://7733674820",
		["battery-charging"] = "rbxassetid://7733674402",
		["battery-full"] = "rbxassetid://7733674503",
		["battery-low"] = "rbxassetid://7733674589",
		["battery-medium"] = "rbxassetid://7733674731",
		beaker = "rbxassetid://7733674922",
		bell = "rbxassetid://7733911828",
		["bell-minus"] = "rbxassetid://7733675028",
		["bell-off"] = "rbxassetid://7733675107",
		["bell-plus"] = "rbxassetid://7733675181",
		["bell-ring"] = "rbxassetid://7733675275",
		bike = "rbxassetid://7733678330",
		binary = "rbxassetid://7733678388",
		bluetooth = "rbxassetid://7733687147",
		["bluetooth-connected"] = "rbxassetid://7734110952",
		["bluetooth-off"] = "rbxassetid://7733914252",
		["bluetooth-searching"] = "rbxassetid://7733914320",
		bold = "rbxassetid://7733687211",
		book = "rbxassetid://7733914390",
		["book-open"] = "rbxassetid://7733687281",
		bookmark = "rbxassetid://7733692043",
		["bookmark-minus"] = "rbxassetid://7733689754",
		["bookmark-plus"] = "rbxassetid://7734111084",
		bot = "rbxassetid://7733916988",
		box = "rbxassetid://7733917120",
		["box-select"] = "rbxassetid://7733696665",
		briefcase = "rbxassetid://7733919017",
		brush = "rbxassetid://7733701455",
		bug = "rbxassetid://7733701545",
		building = "rbxassetid://7733701625",
		bus = "rbxassetid://7733701715",
		calculator = "rbxassetid://7733919105",
		calendar = "rbxassetid://7733919198",
		camera = "rbxassetid://7733708692",
		["camera-off"] = "rbxassetid://7733919260",
		car = "rbxassetid://7733708835",
		carrot = "rbxassetid://8997382987",
		cast = "rbxassetid://7733919326",
		charge = "rbxassetid://8997383136",
		check = "rbxassetid://7733715400",
		["check-circle"] = "rbxassetid://7733919427",
		["check-circle-2"] = "rbxassetid://7733710700",
		["check-square"] = "rbxassetid://7733919526",
		["chevron-down"] = "rbxassetid://7733717447",
		["chevron-first"] = "rbxassetid://8997383275",
		["chevron-last"] = "rbxassetid://8997383390",
		["chevron-left"] = "rbxassetid://7733717651",
		["chevron-right"] = "rbxassetid://7733717755",
		["chevron-up"] = "rbxassetid://7733919605",
		["chevrons-down"] = "rbxassetid://7733720604",
		["chevrons-down-up"] = "rbxassetid://7733720483",
		["chevrons-left"] = "rbxassetid://7733720701",
		["chevrons-right"] = "rbxassetid://7733919682",
		["chevrons-up"] = "rbxassetid://7733723433",
		["chevrons-up-down"] = "rbxassetid://7733723321",
		chrome = "rbxassetid://7733919783",
		circle = "rbxassetid://7733919881",
		["circle-slashed"] = "rbxassetid://8997383530",
		clipboard = "rbxassetid://7733734762",
		["clipboard-check"] = "rbxassetid://7733919947",
		["clipboard-copy"] = "rbxassetid://7733920037",
		["clipboard-list"] = "rbxassetid://7733920117",
		["clipboard-x"] = "rbxassetid://7733734668",
		clock = "rbxassetid://7733734848",
		["clock-1"] = "rbxassetid://8997383694",
		["clock-10"] = "rbxassetid://8997383876",
		["clock-11"] = "rbxassetid://8997384034",
		["clock-12"] = "rbxassetid://8997384150",
		["clock-2"] = "rbxassetid://8997384295",
		["clock-3"] = "rbxassetid://8997384456",
		["clock-4"] = "rbxassetid://8997384603",
		["clock-5"] = "rbxassetid://8997384798",
		["clock-6"] = "rbxassetid://8997384977",
		["clock-7"] = "rbxassetid://8997385147",
		["clock-8"] = "rbxassetid://8997385352",
		["clock-9"] = "rbxassetid://8997385485",
		cloud = "rbxassetid://7733746980",
		["cloud-drizzle"] = "rbxassetid://7733920226",
		["cloud-fog"] = "rbxassetid://7733920317",
		["cloud-hail"] = "rbxassetid://7733920444",
		["cloud-lightning"] = "rbxassetid://7733741741",
		["cloud-moon"] = "rbxassetid://7733920519",
		["cloud-off"] = "rbxassetid://7733745572",
		["cloud-rain"] = "rbxassetid://7733746651",
		["cloud-rain-wind"] = "rbxassetid://7733746456",
		["cloud-snow"] = "rbxassetid://7733746798",
		["cloud-sun"] = "rbxassetid://7733746880",
		cloudy = "rbxassetid://7733747106",
		clover = "rbxassetid://7733747233",
		code = "rbxassetid://7733749837",
		["code-2"] = "rbxassetid://7733920644",
		codepen = "rbxassetid://7733920768",
		codesandbox = "rbxassetid://7733752575",
		coffee = "rbxassetid://7733752630",
		coins = "rbxassetid://7743866529",
		columns = "rbxassetid://7733757178",
		command = "rbxassetid://7733924046",
		compass = "rbxassetid://7733924216",
		contact = "rbxassetid://7743866666",
		contrast = "rbxassetid://7733764005",
		cookie = "rbxassetid://8997385628",
		copy = "rbxassetid://7733764083",
		copyleft = "rbxassetid://7733764196",
		copyright = "rbxassetid://7733764275",
		["corner-down-left"] = "rbxassetid://7733764327",
		["corner-down-right"] = "rbxassetid://7733764385",
		["corner-left-down"] = "rbxassetid://7733764448",
		["corner-left-up"] = "rbxassetid://7733764536",
		["corner-right-down"] = "rbxassetid://7733764605",
		["corner-right-up"] = "rbxassetid://7733764680",
		["corner-up-left"] = "rbxassetid://7733764800",
		["corner-up-right"] = "rbxassetid://7733764915",
		cpu = "rbxassetid://7733765045",
		crop = "rbxassetid://7733765140",
		cross = "rbxassetid://7733765224",
		crosshair = "rbxassetid://7733765307",
		crown = "rbxassetid://7733765398",
		currency = "rbxassetid://7733765592",
		database = "rbxassetid://7743866778",
		delete = "rbxassetid://7733768142",
		divide = "rbxassetid://7733769365",
		["divide-circle"] = "rbxassetid://7733769152",
		["divide-square"] = "rbxassetid://7733769261",
		["dollar-sign"] = "rbxassetid://7733770599",
		download = "rbxassetid://7733770755",
		["download-cloud"] = "rbxassetid://7733770689",
		dribbble = "rbxassetid://7733770843",
		droplet = "rbxassetid://7733770982",
		droplets = "rbxassetid://7733771078",
		drumstick = "rbxassetid://8997385789",
		edit = "rbxassetid://7733771472",
		["edit-2"] = "rbxassetid://7733771217",
		["edit-3"] = "rbxassetid://7733771361",
		egg = "rbxassetid://8997385940",
		electricity = "rbxassetid://7733771628",
		["electricity-off"] = "rbxassetid://7733771563",
		equal = "rbxassetid://7733771811",
		["equal-not"] = "rbxassetid://7733771726",
		euro = "rbxassetid://7733771891",
		expand = "rbxassetid://7733771982",
		["external-link"] = "rbxassetid://7743866903",
		eye = "rbxassetid://7733774602",
		["eye-off"] = "rbxassetid://7733774495",
		["fast-forward"] = "rbxassetid://7743867090",
		feather = "rbxassetid://7733777166",
		figma = "rbxassetid://7743867310",
		file = "rbxassetid://7733793319",
		["file-check"] = "rbxassetid://7733779668",
		["file-check-2"] = "rbxassetid://7733779610",
		["file-code"] = "rbxassetid://7733779730",
		["file-digit"] = "rbxassetid://7733935829",
		["file-input"] = "rbxassetid://7733935917",
		["file-minus"] = "rbxassetid://7733936115",
		["file-minus-2"] = "rbxassetid://7733936010",
		["file-output"] = "rbxassetid://7733788742",
		["file-plus"] = "rbxassetid://7733788885",
		["file-plus-2"] = "rbxassetid://7733788816",
		["file-search"] = "rbxassetid://7733788966",
		["file-text"] = "rbxassetid://7733789088",
		["file-x"] = "rbxassetid://7733938136",
		["file-x-2"] = "rbxassetid://7743867554",
		files = "rbxassetid://7743867811",
		film = "rbxassetid://7733942579",
		filter = "rbxassetid://7733798407",
		flag = "rbxassetid://7733798691",
		["flag-triangle-left"] = "rbxassetid://7733798509",
		["flag-triangle-right"] = "rbxassetid://7733798634",
		flame = "rbxassetid://7733798747",
		flashlight = "rbxassetid://7733798851",
		["flashlight-off"] = "rbxassetid://7733798799",
		["flask-conical"] = "rbxassetid://7733798901",
		["flask-round"] = "rbxassetid://7733798957",
		folder = "rbxassetid://7733799185",
		["folder-minus"] = "rbxassetid://7733799022",
		["folder-open"] = "rbxassetid://8997386062",
		["folder-plus"] = "rbxassetid://7733799092",
		["form-input"] = "rbxassetid://7733799275",
		forward = "rbxassetid://7733799371",
		framer = "rbxassetid://7733799486",
		frown = "rbxassetid://7733799591",
		["function-square"] = "rbxassetid://7733799682",
		gamepad = "rbxassetid://7733799901",
		["gamepad-2"] = "rbxassetid://7733799795",
		gauge = "rbxassetid://7733799969",
		gavel = "rbxassetid://7733800044",
		gem = "rbxassetid://7733942651",
		ghost = "rbxassetid://7743868000",
		gift = "rbxassetid://7733946818",
		["gift-card"] = "rbxassetid://7733945018",
		["git-branch"] = "rbxassetid://7733949149",
		["git-branch-plus"] = "rbxassetid://7743868200",
		["git-commit"] = "rbxassetid://7743868360",
		["git-merge"] = "rbxassetid://7733952195",
		["git-pull-request"] = "rbxassetid://7733952287",
		github = "rbxassetid://7733954058",
		gitlab = "rbxassetid://7733954246",
		glasses = "rbxassetid://7733954403",
		globe = "rbxassetid://7733954760",
		["globe-2"] = "rbxassetid://7733954611",
		grab = "rbxassetid://7733954884",
		["graduation-cap"] = "rbxassetid://7733955058",
		grid = "rbxassetid://7733955179",
		["grip-horizontal"] = "rbxassetid://7733955302",
		["grip-vertical"] = "rbxassetid://7733955410",
		hammer = "rbxassetid://7733955511",
		hand = "rbxassetid://7733955740",
		["hand-metal"] = "rbxassetid://7733955664",
		["hard-drive"] = "rbxassetid://7733955793",
		["hard-hat"] = "rbxassetid://7733955850",
		hash = "rbxassetid://7733955906",
		haze = "rbxassetid://7733955969",
		headphones = "rbxassetid://7733956063",
		heart = "rbxassetid://7733956134",
		["help-circle"] = "rbxassetid://7733956210",
		hexagon = "rbxassetid://7743868527",
		highlighter = "rbxassetid://7743868648",
		history = "rbxassetid://7733960880",
		home = "rbxassetid://7733960981",
		image = "rbxassetid://7733964126",
		["image-minus"] = "rbxassetid://7733963797",
		["image-off"] = "rbxassetid://7733963907",
		["image-plus"] = "rbxassetid://7733964016",
		import = "rbxassetid://7733964240",
		inbox = "rbxassetid://7733964370",
		indent = "rbxassetid://7733964452",
		["indian-rupee"] = "rbxassetid://7733964536",
		infinity = "rbxassetid://7733964640",
		info = "rbxassetid://7733964719",
		inspect = "rbxassetid://7733964808",
		italic = "rbxassetid://7733964917",
		["jersey-pound"] = "rbxassetid://7733965029",
		key = "rbxassetid://7733965118",
		landmark = "rbxassetid://7733965184",
		languages = "rbxassetid://7733965249",
		laptop = "rbxassetid://7733965386",
		["laptop-2"] = "rbxassetid://7733965313",
		lasso = "rbxassetid://7733967892",
		["lasso-select"] = "rbxassetid://7743868832",
		layers = "rbxassetid://7743868936",
		layout = "rbxassetid://7733970543",
		["layout-dashboard"] = "rbxassetid://7733970318",
		["layout-grid"] = "rbxassetid://7733970390",
		["layout-list"] = "rbxassetid://7733970442",
		["layout-template"] = "rbxassetid://7733970494",
		library = "rbxassetid://7743869054",
		["life-buoy"] = "rbxassetid://7733973479",
		lightbulb = "rbxassetid://7733975185",
		["lightbulb-off"] = "rbxassetid://7733975123",
		link = "rbxassetid://7733978098",
		["link-2"] = "rbxassetid://7743869163",
		["link-2-off"] = "rbxassetid://7733975283",
		list = "rbxassetid://7743869612",
		["list-checks"] = "rbxassetid://7743869317",
		["list-minus"] = "rbxassetid://7733980795",
		["list-ordered"] = "rbxassetid://7743869411",
		["list-plus"] = "rbxassetid://7733984995",
		["list-x"] = "rbxassetid://7743869517",
		loader = "rbxassetid://7733992358",
		["loader-2"] = "rbxassetid://7733989869",
		locate = "rbxassetid://7733992469",
		["locate-fixed"] = "rbxassetid://7733992424",
		lock = "rbxassetid://7733992528",
		["log-in"] = "rbxassetid://7733992604",
		["log-out"] = "rbxassetid://7733992677",
		mail = "rbxassetid://7733992732",
		map = "rbxassetid://7733992829",
		["map-pin"] = "rbxassetid://7733992789",
		maximize = "rbxassetid://7733992982",
		["maximize-2"] = "rbxassetid://7733992901",
		megaphone = "rbxassetid://7733993049",
		meh = "rbxassetid://7733993147",
		menu = "rbxassetid://7733993211",
		["message-circle"] = "rbxassetid://7733993311",
		["message-square"] = "rbxassetid://7733993369",
		mic = "rbxassetid://7743869805",
		["mic-off"] = "rbxassetid://7743869714",
		minimize = "rbxassetid://7733997941",
		["minimize-2"] = "rbxassetid://7733997870",
		minus = "rbxassetid://7734000129",
		["minus-circle"] = "rbxassetid://7733998053",
		["minus-square"] = "rbxassetid://7743869899",
		monitor = "rbxassetid://7734002839",
		["monitor-off"] = "rbxassetid://7734000184",
		["monitor-speaker"] = "rbxassetid://7743869988",
		moon = "rbxassetid://7743870134",
		["more-horizontal"] = "rbxassetid://7734006080",
		["more-vertical"] = "rbxassetid://7734006187",
		mountain = "rbxassetid://7734008868",
		["mountain-snow"] = "rbxassetid://7743870286",
		["mouse-pointer"] = "rbxassetid://7743870392",
		["mouse-pointer-2"] = "rbxassetid://7734010405",
		["mouse-pointer-click"] = "rbxassetid://7734010488",
		move = "rbxassetid://7743870731",
		["move-diagonal"] = "rbxassetid://7743870505",
		["move-diagonal-2"] = "rbxassetid://7734013178",
		["move-horizontal"] = "rbxassetid://7734016210",
		["move-vertical"] = "rbxassetid://7743870608",
		music = "rbxassetid://7734020554",
		navigation = "rbxassetid://7734020989",
		["navigation-2"] = "rbxassetid://7734020942",
		network = "rbxassetid://7734021047",
		no_entry = "rbxassetid://7734021118",
		octagon = "rbxassetid://7734021165",
		["on-charge"] = "rbxassetid://7734021231",
		option = "rbxassetid://7734021300",
		outdent = "rbxassetid://7734021384",
		package = "rbxassetid://7734021469",
		["package-check"] = "rbxassetid://8997386143",
		["package-minus"] = "rbxassetid://8997386266",
		["package-plus"] = "rbxassetid://8997386355",
		["package-search"] = "rbxassetid://8997386448",
		["package-x"] = "rbxassetid://8997386545",
		palette = "rbxassetid://7734021595",
		paperclip = "rbxassetid://7734021680",
		pause = "rbxassetid://7734021897",
		["pause-circle"] = "rbxassetid://7734021767",
		["pause-octagon"] = "rbxassetid://7734021827",
		["pen-tool"] = "rbxassetid://7734022041",
		pencil = "rbxassetid://7734022107",
		percent = "rbxassetid://7743870852",
		["person-standing"] = "rbxassetid://7743871002",
		phone = "rbxassetid://7734032056",
		["phone-call"] = "rbxassetid://7734027264",
		["phone-forwarded"] = "rbxassetid://7734027345",
		["phone-incoming"] = "rbxassetid://7743871120",
		["phone-missed"] = "rbxassetid://7734029465",
		["phone-off"] = "rbxassetid://7734029534",
		["phone-outgoing"] = "rbxassetid://7743871253",
		["pie-chart"] = "rbxassetid://7734034378",
		["piggy-bank"] = "rbxassetid://7734034513",
		pin = "rbxassetid://8997386648",
		pipette = "rbxassetid://7743871384",
		plane = "rbxassetid://7734037723",
		play = "rbxassetid://7743871480",
		["play-circle"] = "rbxassetid://7734037784",
		plus = "rbxassetid://7734042071",
		["plus-circle"] = "rbxassetid://7734040271",
		["plus-square"] = "rbxassetid://7734040369",
		pocket = "rbxassetid://7734042139",
		podcast = "rbxassetid://7734042234",
		pointer = "rbxassetid://7734042307",
		["pound-sterling"] = "rbxassetid://7734042354",
		power = "rbxassetid://7734042493",
		["power-off"] = "rbxassetid://7734042423",
		printer = "rbxassetid://7734042580",
		["qr-code"] = "rbxassetid://7743871575",
		quote = "rbxassetid://7734045100",
		radio = "rbxassetid://7743871662",
		["radio-receiver"] = "rbxassetid://7734045155",
		redo = "rbxassetid://7743871739",
		["refresh-ccw"] = "rbxassetid://7734050715",
		["refresh-cw"] = "rbxassetid://7734051052",
		regex = "rbxassetid://7734051188",
		["repeat"] = "rbxassetid://7734051454",
		["repeat-1"] = "rbxassetid://7734051342",
		reply = "rbxassetid://7734051594",
		["reply-all"] = "rbxassetid://7734051524",
		rewind = "rbxassetid://7734051670",
		["rocking-chair"] = "rbxassetid://7734051769",
		["rotate-ccw"] = "rbxassetid://7734051861",
		["rotate-cw"] = "rbxassetid://7734051957",
		rss = "rbxassetid://7734052075",
		ruler = "rbxassetid://7734052157",
		["russian-ruble"] = "rbxassetid://7734052248",
		save = "rbxassetid://7734052335",
		scale = "rbxassetid://7734052454",
		scan = "rbxassetid://8997386861",
		["scan-line"] = "rbxassetid://8997386772",
		scissors = "rbxassetid://7734052570",
		["screen-share"] = "rbxassetid://7734052814",
		["screen-share-off"] = "rbxassetid://7734052653",
		search = "rbxassetid://7734052925",
		send = "rbxassetid://7734053039",
		["separator-horizontal"] = "rbxassetid://7734053146",
		["separator-vertical"] = "rbxassetid://7734053213",
		server = "rbxassetid://7734053426",
		["server-crash"] = "rbxassetid://7734053281",
		["server-off"] = "rbxassetid://7734053361",
		["settings"] = "rbxassetid://7734053495",
		["settings-2"] = "rbxassetid://8997386997",
		share = "rbxassetid://7734053697",
		["share-2"] = "rbxassetid://7734053595",
		sheet = "rbxassetid://7743871876",
		shield = "rbxassetid://7734056608",
		["shield-alert"] = "rbxassetid://7734056326",
		["shield-check"] = "rbxassetid://7734056411",
		["shield-close"] = "rbxassetid://7734056470",
		["shield-off"] = "rbxassetid://7734056540",
		shirt = "rbxassetid://7734056672",
		["shopping-bag"] = "rbxassetid://7734056747",
		["shopping-cart"] = "rbxassetid://7734056813",
		shovel = "rbxassetid://7734056878",
		shrink = "rbxassetid://7734056971",
		shuffle = "rbxassetid://7734057059",
		sidebar = "rbxassetid://7734058260",
		["sidebar-close"] = "rbxassetid://7734058092",
		["sidebar-open"] = "rbxassetid://7734058165",
		sigma = "rbxassetid://7734058345",
		signal = "rbxassetid://8997387546",
		["signal-high"] = "rbxassetid://8997387110",
		["signal-low"] = "rbxassetid://8997387189",
		["signal-medium"] = "rbxassetid://8997387319",
		["signal-zero"] = "rbxassetid://8997387434",
		["skip-back"] = "rbxassetid://7734058404",
		["skip-forward"] = "rbxassetid://7734058495",
		skull = "rbxassetid://7734058599",
		slash = "rbxassetid://8997387644",
		sliders = "rbxassetid://7734058803",
		smartphone = "rbxassetid://7734058979",
		["smartphone-charging"] = "rbxassetid://7734058894",
		smile = "rbxassetid://7734059095",
		snowflake = "rbxassetid://7734059180",
		["sort-asc"] = "rbxassetid://7734060715",
		["sort-desc"] = "rbxassetid://7743871973",
		speaker = "rbxassetid://7734063416",
		sprout = "rbxassetid://7743872071",
		square = "rbxassetid://7743872181",
		star = "rbxassetid://7734068321",
		["star-half"] = "rbxassetid://7734068258",
		["stop-circle"] = "rbxassetid://7734068379",
		["stretch-horizontal"] = "rbxassetid://8997387754",
		["stretch-vertical"] = "rbxassetid://8997387862",
		strikethrough = "rbxassetid://7734068425",
		subscript = "rbxassetid://8997387937",
		sun = "rbxassetid://7734068495",
		sunrise = "rbxassetid://7743872365",
		sunset = "rbxassetid://7734070982",
		superscript = "rbxassetid://8997388036",
		["swiss-franc"] = "rbxassetid://7734071038",
		["switch-camera"] = "rbxassetid://7743872492",
		["table"] = "rbxassetid://7734073253",
		tablet = "rbxassetid://7743872620",
		tag = "rbxassetid://7734075797",
		target = "rbxassetid://7743872758",
		tent = "rbxassetid://7734078943",
		terminal = "rbxassetid://7743872929",
		["terminal-square"] = "rbxassetid://7734079055",
		["text-cursor"] = "rbxassetid://8997388195",
		["text-cursor-input"] = "rbxassetid://8997388094",
		thermometer = "rbxassetid://7734084149",
		["thermometer-snowflake"] = "rbxassetid://7743873074",
		["thermometer-sun"] = "rbxassetid://7734084018",
		["thumbs-down"] = "rbxassetid://7734084236",
		["thumbs-up"] = "rbxassetid://7743873212",
		ticket = "rbxassetid://7734086558",
		timer = "rbxassetid://7743873443",
		["timer-off"] = "rbxassetid://8997388325",
		["timer-reset"] = "rbxassetid://7743873336",
		["toggle-left"] = "rbxassetid://7734091286",
		["toggle-right"] = "rbxassetid://7743873539",
		tornado = "rbxassetid://7743873633",
		trash = "rbxassetid://7743873871",
		["trash-2"] = "rbxassetid://7743873772",
		trello = "rbxassetid://7743873996",
		["trending-down"] = "rbxassetid://7743874143",
		["trending-up"] = "rbxassetid://7743874262",
		triangle = "rbxassetid://7743874367",
		truck = "rbxassetid://7743874482",
		tv = "rbxassetid://7743874674",
		["tv-2"] = "rbxassetid://7743874599",
		["type"] = "rbxassetid://7743874740",
		umbrella = "rbxassetid://7743874820",
		underline = "rbxassetid://7743874904",
		undo = "rbxassetid://7743874974",
		unlink = "rbxassetid://7743875149",
		["unlink-2"] = "rbxassetid://7743875069",
		unlock = "rbxassetid://7743875263",
		upload = "rbxassetid://7743875428",
		["upload-cloud"] = "rbxassetid://7743875358",
		user = "rbxassetid://7743875962",
		["user-check"] = "rbxassetid://7743875503",
		["user-minus"] = "rbxassetid://7743875629",
		["user-plus"] = "rbxassetid://7743875759",
		["user-x"] = "rbxassetid://7743875879",
		users = "rbxassetid://7743876054",
		verified = "rbxassetid://7743876142",
		vibrate = "rbxassetid://7743876302",
		video = "rbxassetid://7743876610",
		["video-off"] = "rbxassetid://7743876466",
		view = "rbxassetid://7743876754",
		voicemail = "rbxassetid://7743876916",
		volume = "rbxassetid://7743877487",
		["volume-1"] = "rbxassetid://7743877081",
		["volume-2"] = "rbxassetid://7743877250",
		["volume-x"] = "rbxassetid://7743877381",
		wallet = "rbxassetid://7743877573",
		wand = "rbxassetid://8997388430",
		watch = "rbxassetid://7743877668",
		webcam = "rbxassetid://7743877896",
		wifi = "rbxassetid://7743878148",
		["wifi-off"] = "rbxassetid://7743878056",
		wind = "rbxassetid://7743878264",
		["wrap-text"] = "rbxassetid://8997388548",
		wrench = "rbxassetid://7743878358",
		x = "rbxassetid://7743878857",
		["x-circle"] = "rbxassetid://7743878496",
		["x-octagon"] = "rbxassetid://7743878618",
		["x-square"] = "rbxassetid://7743878737",
		["zoom-in"] = "rbxassetid://7743878977",
		["zoom-out"] = "rbxassetid://7743879082"
}

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

local TweenService = game:GetService("TweenService")
lp = game.Players.LocalPlayer
plr = lp
local Mouse = plr:GetMouse()
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));
local CANSWITCH = true
local ID = game.PlaceId
local FLYING = false
local cmdlp = lp
local cmdm = plr:GetMouse()
local LastCf = lp.character.HumanoidRootPart.CFrame

setdrag = function(ui)
    local gui = ui

local dragging
local dragInput
local dragStart
local startPos
local WILLDRAG = true

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8); -- // The speed of the UI darg.
function Update(dt)
    if WILLDRAG then
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
 	end
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)
end

wait(1)

local G = Instance.new("ScreenGui")
G.ResetOnSpawn = false
G.Enabled = true
G.Name = "ProjectZeouron"
G.Parent = game.CoreGui
G.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets

local popup = function(type, message, func)
    if type == "Yes-No" then
        local frame = Instance.new("ScrollingFrame")
        frame.Parent = G
        frame.Position = UDim2.new(0,444,0,245)
        frame.Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)
        frame.Size = UDim2.new(0,405,0,230)
        frame.Size = UDim2.new(0,405,0,0)
        frame.BackgroundColor3 = Data.BgC
     	frame.Active = true 
		frame.Selectable = true
  		frame.ZIndex = 25
    	frame.ScrollBarImageColor3 = Data.Color
		frame.ScrollBarImageTransparency = 0
		frame.CanvasSize = UDim2.new(0,0,0,0)
        setdrag(frame)
        
        local TweenInf0 = TweenInfo.new(0.5) 
		local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset -122.5)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(0.5) 
		local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,230)})
		PlayThis:Play()
        
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Position = UDim2.new(0,10,0,10)
        label.Size = UDim2.new(0,365 +20,0,100)
        label.BackgroundTransparency = 1
        label.Text = message
        label.Font = Data.Font
        label.TextColor3 = Data.Color
        label.TextScaled = true
        label.ZIndex = 26
        
        local yes = Instance.new("TextButton")
        yes.Parent = frame
        yes.Position = UDim2.new(0,5,0,145)
        yes.Size = UDim2.new(0,385 /2,0,75)
        yes.BackgroundColor3 = Data.DarkC
        yes.Text = "Yes"
        yes.Font = Data.Font
        yes.TextColor3 = Data.Color
        yes.TextScaled = true
        yes.ZIndex = 26
        
        local no = Instance.new("TextButton")
        no.Parent = frame
        no.Position = UDim2.new(0,15 +192.5,0,145)
        no.Size = UDim2.new(0,385 /2,0,75)
        no.BackgroundColor3 = Data.DarkC
        no.Text = "No"
        no.Font = Data.Font
        no.TextColor3 = Data.Color
        no.TextScaled = true
        no.ZIndex = 26
        
        Round(no, 0.05)
        Round(yes, 0.05)
        
        yes.MouseButton1Click:Connect(function()
            local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)})
			PlayThis:Play()
  
  			local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,0)})
			PlayThis:Play()
   			wait(0.5)
      		frame:Destroy()
            func()
        end)
    
    	no.MouseButton1Click:Connect(function()
            local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)})
			PlayThis:Play()
  
  			local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,0)})
			PlayThis:Play()
   			wait(0.5)
      		frame:Destroy()
        end)
    end
end

local Round = function(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

local Main = Instance.new("ScrollingFrame")

Main.Position = UDim2.new(0,339,0,185)
Main.Position = UDim2.new(0,Main.Position.X.Offset,0,Main.Position.Y.Offset +230)
Main.Size = UDim2.new(0,620,0,460)
Main.Size = UDim2.new(0,620,0,0)
Main.Parent = G
Main.BackgroundColor3 = Data.BgC
Main.ZIndex = 6
Main.ScrollBarImageColor3 = Data.Color
Main.ScrollBarImageTransparency = 0
Main.CanvasSize = UDim2.new(0,0,0,0)

local Texto = Instance.new("TextButton")

Texto.Position = UDim2.new(0,0,0,0)
Texto.Size = UDim2.new(0,620,0,30)
Texto.Parent = Main
Texto.BackgroundTransparency = 1
Texto.ZIndex = 12
Texto.Text = "Zeouron"
Texto.Font = Data.Font
Texto.TextColor3 = Data.Color
Texto.TextScaled = true

local Down = Instance.new("Frame")

Down.Position = UDim2.new(0,245,0,30)
Down.Size = UDim2.new(0,125,0,4)
Down.Parent = Main
Down.BackgroundColor3 = Data.Color
Down.BorderColor3 = Data.Color
Down.ZIndex = 7

TabSele = nil

Round(Exec, 0.05)
Round(ExecB, 0.05)

local Tabs = Instance.new("Frame")
Tabs.Size = UDim2.new(0,0,0,0)
Tabs.BackgroundTransparency = 1
Tabs.Parent = Main

local ZEOTAB = Instance.new("Frame")
ZEOTAB.Size = UDim2.new(0,0,0,0)
ZEOTAB.BackgroundTransparency = 1
ZEOTAB.Parent = Tabs

TABpos = 22
addtab = function(THEPLACE, Image, Hover)
local Tab = Instance.new("ImageButton")

Tab.Position = UDim2.new(0,TABpos,0,388)
Tab.Size = UDim2.new(0,55,0,55)
Tab.Parent = ZEOTAB
Tab.BackgroundColor3 = Data.DarkC
Tab.ZIndex = 7
Tab.Image = Image
Tab.ImageColor3 = Data.Color

local TabB = Instance.new("Frame")

TabB.Position = UDim2.new(0,-2,0,-2)
TabB.Size = UDim2.new(0,59,0,59)
TabB.Parent = Tab
TabB.BackgroundColor3 = Data.Color
TabB.ZIndex = 6.5

local HoverText = Instance.new("TextLabel")

HoverText.Position = UDim2.new(0,-27.5,0,-37)
HoverText.Position = UDim2.new(0,-27.5 +55,0,-37)
HoverText.Size = UDim2.new(0,110,0,23)
HoverText.Size = UDim2.new(0,0,0,23)
HoverText.Parent = Tab
HoverText.BackgroundColor3 = Data.DarkerC
HoverText.ZIndex = 7
HoverText.Text = Hover
HoverText.Font = Data.Font
HoverText.TextColor3 = Data.Color
HoverText.TextScaled = true

Round(Tab, 0.05)
Round(TabB, 0.05)
Round(HoverText, 0.05)

Tab.MouseButton1Click:Connect(function()
    if TabSele ~= THEPLACE and CANSWITCH then
    CANSWITCH = false
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(Down, TweenInf0, {Size = UDim2.new(0,0,0,4)})
	PlayThis:Play()
 	local num = 125 /2
 	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(Down, TweenInf0, {Position = UDim2.new(0,245 +num,0,30)})
	PlayThis:Play()
 
 	local random = math.random(1,2)
  	SETDAPOS = 620
   	SETDAPOSNEW = -620
  	if random == 1 then
       SETDAPOS = 620
       SETDAPOSNEW = -620
    end
	if random == 2 then
       SETDAPOS = -620
       SETDAPOSNEW = 620
    end
    	
  	local oldTabSele = TabSele
  	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(oldTabSele, TweenInf0, {Position = UDim2.new(0,SETDAPOS,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()

    TabSele = THEPLACE
    THEPLACE.Visible = true
    THEPLACE.Position = UDim2.new(0,SETDAPOSNEW,0,0)
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(THEPLACE, TweenInf0, {Position = UDim2.new(0,0,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()
    for i,v in pairs(Tabs:GetChildren()) do
        if v ~= THEPLACE and v ~= oldTabSele then
        	v.Visible = false
        end
    end
	wait(0.3)
	Down.Visible = false
 	oldTabSele.Visible = false
  	oldTabSele.Position = UDim2.new(0,0,0,0)
   	CANSWITCH = true
   	end
end)

Tab.MouseEnter:Connect(function()
    local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Size = UDim2.new(0,110,0,23)})
	PlayThis:Play()
 	local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Position = UDim2.new(0,-27.5,0,-37)})
	PlayThis:Play()
end)

Tab.MouseLeave:Connect(function()
    local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Size = UDim2.new(0,0,0,23)})
	PlayThis:Play()
 	local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Position = UDim2.new(0,-27.5 +55,0,-37)})
	PlayThis:Play()
end)

TABpos = TABpos +69
end

local GAMES = Instance.new("Frame")
GAMES.Size = UDim2.new(0,0,0,0)
GAMES.BackgroundTransparency = 1
GAMES.Parent = Tabs
GAMES.Visible = false

local MAINGAMES = Instance.new("Frame")
MAINGAMES.Size = UDim2.new(0,0,0,0)
MAINGAMES.BackgroundTransparency = 1
MAINGAMES.Parent = GAMES
MAINGAMES.Visible = true

local TABGAMES = Instance.new("Frame")
TABGAMES.Size = UDim2.new(0,0,0,0)
TABGAMES.BackgroundTransparency = 1
TABGAMES.Parent = GAMES
TABGAMES.Visible = false

SUPPORTPOS = 12 +34
local GamesLib = {
    NewTab = function(name)
                
        local Tab = Instance.new("Frame")
		Tab.Size = UDim2.new(0,0,0,0)
		Tab.BackgroundTransparency = 1
		Tab.Parent = TABGAMES
		Tab.Visible = false
        
    local BUTTON = Instance.new("TextLabel")

	BUTTON.Position = UDim2.new(0,95,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = MAINGAMES
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = name
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    local arrow = Instance.new("TextButton")
    
    arrow.Position = UDim2.new(0,620 -190 -40,0,0)
	arrow.Size = UDim2.new(0,40,0,40)
	arrow.Parent = BUTTON
	arrow.BackgroundTransparency = 1
	arrow.ZIndex = 8.2
 	arrow.Text = ">"
  	arrow.Font = Data.Font
   	arrow.TextScaled = true
    arrow.TextColor3 = Data.Color
    
    local Back = Instance.new("TextButton")
    
    Back.Position = UDim2.new(0,0,0,30)
	Back.Size = UDim2.new(0,40,0,40)
	Back.Parent = Tab
	Back.BackgroundTransparency = 1
	Back.ZIndex = 8.2
 	Back.Text = "<"
  	Back.Font = Data.Font
   	Back.TextScaled = true
    Back.TextColor3 = Data.Color
    
    arrow.MouseButton1Click:Connect(function()
        if GAME5HESTAB ~= Tab then
        	Tab.Visible = true
        	TABGAMES.Visible = true
        	MAINGAMES.Visible = false
        	for i,v in pairs(TABGAMES:GetChildren()) do
            	if v ~= Tab then
                	v.Visible = false
            	end
        	end
    	end
    end)

	Back.MouseButton1Click:Connect(function()
        TABGAMES.Visible = false
        MAINGAMES.Visible = true
    end)
    
    SUPPORTPOS = SUPPORTPOS +45
    
    Round(BUTTON, 0.07)
    
    local TABSHIT = 12 +34
    local funcs = {
        NewButton = function(Name, func)
            local BUTTON = Instance.new("TextButton")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		BUTTON.MouseButton1Click:Connect(function()
            	func()
            end)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewSlider = function(Name, func)
            local BUTTON = Instance.new("TextButton")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewLabel = function(Name)
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,27)
			BUTTON.Parent = Tab
			BUTTON.BackgroundTransparency = 1
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		TABSHIT = TABSHIT +27
        end,
    
    	NewSwitch = function(Name, func) 
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,430,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		local SWITCHER = Instance.new("TextButton")

			SWITCHER.Position = UDim2.new(0,400,0,7)
			SWITCHER.Size = UDim2.new(0,25,0,25)
			SWITCHER.Parent = BUTTON
			SWITCHER.BackgroundColor3 = Data.DarkC
			SWITCHER.ZIndex = 8
 			SWITCHER.Text = ""
      
      		Round(BUTTON, 0.05)
        	Round(SWITCHER, 0.05)
      
      		local switcherbool = false
      		SWITCHER.MouseButton1Click:Connect(function()
            	if switcherbool then
                 	SWITCHER.BackgroundColor3 = Data.DarkC
                 	switcherbool = false
            		func(switcherbool)
              	else
               		SWITCHER.BackgroundColor3 = Data.Color
               		switcherbool = true
            		func(switcherbool)
               	end
            end)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewTextBox = function(Name, func) 
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,430,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      		BUTTON.TextXAlignment = "Left"
      
      		local SWITCHER = Instance.new("TextBox")

			SWITCHER.Position = UDim2.new(0,215,0,0)
			SWITCHER.Size = UDim2.new(0,215,0,40)
			SWITCHER.Parent = BUTTON
			SWITCHER.BackgroundColor3 = Data.Color
			SWITCHER.ZIndex = 8
 			SWITCHER.Text = ""
    		SWITCHER.TextColor3 = Data.DarkC
 			SWITCHER.TextScaled = true
    		SWITCHER.ZIndex = 10
    		SWITCHER.Text = name
    		SWITCHER.Font = Data.Font
       		SWITCHER.ClearTextOnFocus = false
      
      		Round(BUTTON, 0.05)
        	Round(SWITCHER, 0.05)
      
      		SWITCHER.FocusLost:Connect(function(t)
            	func(SWITCHER.Text)
            end)
      
      		TABSHIT = TABSHIT +45
        end
    }
	return funcs
    end
}

function fly(speed)
	 local controlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 
	 Signal1 = game.Players.LocalPlayer.CharacterAdded:Connect(function(NewChar)
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = NewChar:WaitForChild("Humanoid").RootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = NewChar.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 end)
	 
	 local camera = game.Workspace.CurrentCamera
	 
	 Signal2 = game:GetService"RunService".RenderStepped:Connect(function()
	 if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = camera.CoordinateFrame
	 local direction = controlModule:GetMoveVector()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
	 if direction.X > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.X < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.Z > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 if direction.Z < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 end
	 end)
 end
 
 function unfly()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	 Signal1:Disconnect()
	 Signal2:Disconnect()
 end

local mods = GamesLib.NewTab("Player Modifications")
mods.NewLabel("Credits")
mods.NewButton("Fly: Nameless", function() end)

mods.NewLabel("Fly")
mods.NewSwitch("Fly", function(bool) 
    if bool then
    	lp.Character.Humanoid.PlatformStand = false
        fly(45)
    else
    	lp.Character.Humanoid.PlatformStand = false
     	unfly()
    end
end)

mods.NewLabel("Misc")

mods.NewButton("Die", function() 
    lp.character:BreakJoints()
end)

mods.NewSwitch("TP last", function(bool) 
    tplst = bool
end)

local Bhop = false
mods.NewSwitch("BHop", function(bool) 
    Bhop = bool
    lp.character.Humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
        if lp.character.Humanoid.Jump == true and Bhop then
        	local vel = lp.character.Humanoid.MoveDirection *50 +lp.character.HumanoidRootPart.Velocity
         	lp.character.HumanoidRootPart.Velocity = vel
     	end
    end)
end)

CharDied = function(char)
    if tplst then
		local hum = char:WaitForChild("HumanoidRootPart")
 		LastCf = hum.CFrame
  	end
end

lp.character.Humanoid.Died:Connect(function()
    CharDied(lp.character)
end)

lp.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid")
    if tplst then
    	local hum = char:WaitForChild("HumanoidRootPart")
 		hum.CFrame = LastCf
  	end
    hum.Died:Connect(function()
        CharDied(char)
    end)
end)

local ms = GamesLib.NewTab("Mobile Shiftlock")

ms.NewLabel("Credits")
ms.NewButton("== Dollynho ==", function() end)

ms.NewLabel("Main")

local fov = 0 
local maxDistance = 100
local maxTransparency = 0
local teamCheck = false

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera
local LockCam = false
local howmuchup = 0

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = 40
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local maxDistance = fov
    local transparency = (1 - (distance / maxDistance)) * maxTransparency
    return transparency
end

local function isPlayerAlive(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.Health > 0
    end
    return false
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for i = 1, #Players:GetPlayers() do
        local player = Players:GetPlayers()[i]
        if player and player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) then
            if isPlayerAlive(player) then
                local part = player.Character and player.Character:FindFirstChild(trg_part)
                if part then
                    local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                    local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                    if distance < last and isVisible and distance < fov and distance < maxDistance then
                        last = distance
                        nearest = player
                    end
                end
            end
        end
    end

    return nearest
end

RunService.RenderStepped:Connect(function()
    updateDrawings()
    if LockCam then
        local v2 = game.Workspace.CurrentCamera.ViewportSize /2
    	mousemoveabs(v2.X, v2.Y +howmuchup)
    end
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
    
    if closest then
        local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
    
    wait(0.03)
end)

ms.NewSwitch("Aimbot On", function(bool)
    if bool then
    	fov = 40
    else
    	fov = 0
    end
end)

ms.NewSwitch("Check team", function(bool)
    teamCheck = bool
end)

ms.NewSwitch("Lock Mouse", function(bool)
    LockCam = bool
end)

ms.NewTextBox("Lock Up", function(text)
    howmuchup = tonumber(text)
end)

local espTab = GamesLib.NewTab("Esp")
espTab.NewSwitch("Esp On", function(bool)
    espon = bool
    if bool then
        while wait(1) and espon do
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= lp and v.character then
                	if v.character:FindFirstChild("Highlight") then
                    	v.character:FindFirstChild("Highlight"):Destroy()
                	end
             		if v.character:FindFirstChild("ESPBILL") then
                    	v.character:FindFirstChild("ESPBILL"):Destroy()
                	end
             		if v.character:FindFirstChild("ESPHP") then
                    	v.character:FindFirstChild("ESPHP"):Destroy()
                	end
             		v.NameDisplayDistance = 100
             
             		TText = ""
               		if showname then
                    	TText = TText..v.DisplayName
                     	v.NameDisplayDistance = 0
                    end
               
               		local BillboardGui = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")
     
					BillboardGui.Adornee = v.Character.Head
					BillboardGui.Name = "ESPBILL"
					BillboardGui.Parent = v.character
					BillboardGui.Size = UDim2.new(0, 100, 0, 150)
					BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
					BillboardGui.AlwaysOnTop = true
     
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundTransparency = 1
					TextLabel.Position = UDim2.new(0, 0, 0, -50)
					TextLabel.Size = UDim2.new(0, 100, 0, 100)
					TextLabel.Font = Data.Font
					TextLabel.TextSize = 17
					TextLabel.TextColor3 = v.TeamColor.Color
					TextLabel.TextStrokeTransparency = 0.3
					TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
					TextLabel.Text = TText
					TextLabel.ZIndex = 1
     
     				if Healthbar then
             		local BillboardGui = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")
     
					BillboardGui.Adornee = v.Character.Head
					BillboardGui.Name = "ESPHP"
					BillboardGui.Parent = v.character
					BillboardGui.Size = UDim2.new(0, 100, 0, 150)
					BillboardGui.StudsOffset = Vector3.new(0, 2.2, 0)
					BillboardGui.AlwaysOnTop = true
     
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundTransparency = 1
					TextLabel.Position = UDim2.new(0, 0, 0, -50)
					TextLabel.Size = UDim2.new(0, 100, 0, 100)
					TextLabel.Font = Data.Font
					TextLabel.TextSize = 17
					TextLabel.TextColor3 = v.TeamColor.Color
					TextLabel.TextStrokeTransparency = 0.3
					TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
					TextLabel.Text = "HP: "..v.character.Humanoid.Health.." /"..v.character.Humanoid.MaxHealth
					TextLabel.ZIndex = 1
             		end
               
                	local hl = Instance.new("Highlight")
    				hl.FillColor = v.TeamColor.Color
        			hl.Parent = v.character
       			end
            end
        end
    else
    	for i,v in pairs(game.Players:GetChildren()) do
         	v.NameDisplayDistance = 100
         	if v.character:FindFirstChild("ESPBILL") then
            	v.character:FindFirstChild("ESPBILL"):Destroy()
            end
            if v.character:FindFirstChild("Highlight") then
        		v.character:FindFirstChild("Highlight"):Destroy()
        	end
     		if v.character:FindFirstChild("ESPHP") then
            	v.character:FindFirstChild("ESPHP"):Destroy()
            end
     	end
    end
end)

espTab.NewLabel("Hh")

espTab.NewSwitch("Show name", function(bool)
    showname = bool
end)

espTab.NewSwitch("HealthBar", function(bool)
    Healthbar = bool
end)

charadded = function(char)
    local hum = char:WaitForChild("Humanoid")
    hum.HealthChanged:Connect(function(new)
        if char:FindFirstChild("ESPHP") then
            char:FindFirstChild("ESPHP").TextLabel.Text = "HP: "..new.." /"..char.Humanoid.MaxHealth
        end
    end)
end

for i,v in pairs(game.Players:GetPlayers()) do
    v.CharacterAdded:Connect(function(char)
       	charadded(char)
    end)
end

game.Players.PlayerAdded:Connect(function(char)
   	char.CharacterAdded:Connect(function(char)
       	charadded(char)
    end)
end)

local MORE = Instance.new("Frame")
MORE.Size = UDim2.new(0,0,0,0)
MORE.BackgroundTransparency = 1
MORE.Parent = Tabs
MORE.Visible = false

local Scroll = Instance.new("ScrollingFrame")

Scroll.Position = UDim2.new(0,95,0,0)
Scroll.Size = UDim2.new(0,620 -190,0,460)
Scroll.Parent = MORE
Scroll.BackgroundTransparency = 1
Scroll.BorderColor3 = Data.BgC
Scroll.ZIndex = 7
Scroll.ScrollBarImageColor3 = Data.Color
Scroll.ScrollBarImageTransparency = 0
Scroll.CanvasSize = UDim2.new(0,0,0,0)

SUPPORTPOS = 12 +34

local LABEL = Instance.new("TextLabel")

LABEL.Position = UDim2.new(0,0,0,SUPPORTPOS)
LABEL.Size = UDim2.new(0,620 -190,0,27)
LABEL.Parent = Scroll
LABEL.BackgroundTransparency = 1
LABEL.ZIndex = 8
LABEL.Text = "Supported Games"
LABEL.Font = Data.Font
LABEL.TextScaled = true
LABEL.TextColor3 = Data.Color

SUPPORTPOS = SUPPORTPOS +27

for i,v in pairs(SupportedGames) do
    local BUTTON = Instance.new("TextLabel")

	BUTTON.Position = UDim2.new(0,0,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = Scroll
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = v.GameName
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    local arrow = Instance.new("TextButton")
    
    arrow.Position = UDim2.new(0,620 -190 -40,0,0)
	arrow.Size = UDim2.new(0,40,0,40)
	arrow.Parent = BUTTON
	arrow.BackgroundTransparency = 1
	arrow.ZIndex = 8.2
 	arrow.Text = ">"
  	arrow.Font = Data.Font
   	arrow.TextScaled = true
    arrow.TextColor3 = Data.Color
    
    arrow.MouseButton1Click:Connect(function()
        popup("Yes-No", "Do you want to teleport to "..v.GameName.."?", function()
            game:GetService("TeleportService"):Teleport(v.GOTOID)
        end)
    end)
    
    SUPPORTPOS = SUPPORTPOS +45
    
    Round(BUTTON, 0.07)
end

SUPPORTPOS = SUPPORTPOS +45

local LABEL = Instance.new("TextLabel")

LABEL.Position = UDim2.new(0,0,0,SUPPORTPOS)
LABEL.Size = UDim2.new(0,620 -190,0,27)
LABEL.Parent = Scroll
LABEL.BackgroundTransparency = 1
LABEL.ZIndex = 8
LABEL.Text = "Credits"
LABEL.Font = Data.Font
LABEL.TextScaled = true
LABEL.TextColor3 = Data.Color

SUPPORTPOS = SUPPORTPOS +27

local creds = {
    {
    	"Main Developer",
     	"l_l6658"
    },
	{
    	"UI maker",
     	"l_l6658"
    }
}

for i,v in pairs(creds) do
    local BUTTON = Instance.new("TextButton")

	BUTTON.Position = UDim2.new(0,0,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = Scroll
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = v[1]..": "..v[2]
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    SUPPORTPOS = SUPPORTPOS +45
    
    BUTTON.MouseButton1Click:Connect(function()
    	setclipboard(v[2])
    end)
    
    Round(BUTTON, 0.07)
end

TabSele = ZEOTAB

local icon = Instance.new("ImageButton")

icon.Position = UDim2.new(0,128,0,46)
icon.Size = UDim2.new(0,350,0,350)
icon.BackgroundTransparency = 1
icon.Parent = ZEOTAB
icon.Image = "http://www.roblox.com/asset/?id=16688349183"
icon.ZIndex = 7

local Ex = Instance.new("TextButton")

Ex.Position = UDim2.new(0,620 -50,0,0)
Ex.Size = UDim2.new(0,50,0,50)
Ex.Parent = Main
Ex.BackgroundTransparency = 1
Ex.ZIndex = 12
Ex.Text = "X"
Ex.Font = Data.Font
Ex.TextColor3 = Data.Color
Ex.TextScaled = true

local Exec = Instance.new("ImageButton")

Exec.Position = UDim2.new(0,544,0,388)
Exec.Size = UDim2.new(0,55,0,55)
Exec.Parent = ZEOTAB
Exec.BackgroundColor3 = Data.DarkC
Exec.ZIndex = 7
Exec.Image = Icons.code
Exec.ImageColor3 = Data.Color

local ExecB = Instance.new("Frame")

ExecB.Position = UDim2.new(0,-2,0,-2)
ExecB.Size = UDim2.new(0,59,0,59)
ExecB.Parent = Exec
ExecB.BackgroundColor3 = Data.Color
ExecB.ZIndex = 6.5

Round(ExecB, 0.05)
Round(Exec, 0.05)

addtab(GAMES, Icons.gamepad, "Universal")
addtab(MORE, Icons["more-horizontal"], "Information")

local TweenInf0 = TweenInfo.new(0.6) 
local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,460)})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(0.6) 
local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset -230)})
PlayThis:Play()

Texto.MouseButton1Click:Connect(function()
    local THEPLACE = ZEOTAB
    if TabSele ~= ZEOTAB and CANSWITCH then
        CANSWITCH = false
        Down.Visible = true
        local TweenInf0 = TweenInfo.new(0.3) 
		local PlayThis = TweenService:Create(Down, TweenInf0, {Size = UDim2.new(0,125,0,4)})
		PlayThis:Play()
 		local TweenInf0 = TweenInfo.new(0.3) 
		local PlayThis = TweenService:Create(Down, TweenInf0, {Position = UDim2.new(0,245,0,30)})
		PlayThis:Play()
    	
    local random = math.random(1,2)
  	SETDAPOS = 620
   	SETDAPOSNEW = -620
  	if random == 1 then
       SETDAPOS = 620
       SETDAPOSNEW = -620
    end
	if random == 2 then
       SETDAPOS = -620
       SETDAPOSNEW = 620
    end
    	
  	local oldTabSele = TabSele
  	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(oldTabSele, TweenInf0, {Position = UDim2.new(0,SETDAPOS,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()

    TabSele = THEPLACE
    THEPLACE.Visible = true
    THEPLACE.Position = UDim2.new(0,SETDAPOSNEW,0,0)
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(THEPLACE, TweenInf0, {Position = UDim2.new(0,0,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()
    for i,v in pairs(Tabs:GetChildren()) do
        if v ~= THEPLACE and v ~= oldTabSele then
        	v.Visible = false
        end
    end
	wait(0.3)
 	oldTabSele.Visible = false
  	oldTabSele.Position = UDim2.new(0,0,0,0)
   	CANSWITCH = true
   	end
end)

Ex.MouseButton1Click:Connect(function()
    local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,0)})
	PlayThis:Play()

	local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset +230)})
	PlayThis:Play()
 	wait(0.6)
  	G:Destroy()
end)

Exec.MouseButton1Click:Connect(function()
    local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,0)})
	PlayThis:Play()

	local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset +230)})
	PlayThis:Play()
 	wait(0.6)
  	G:Destroy()
	for i,v in pairs(SupportedGames) do
    	if v.ID == ID then
     		v.Script()
     	end
    end
end)

setdrag(Main)