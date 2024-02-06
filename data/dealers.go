package data

type Dealers struct {
	Official    []Dealer
	Independant []Dealer
}

type Dealer struct {
	ID      string
	Name    string
	Website string
}

func GetDealers() Dealers {
	return Dealers{
		Official: []Dealer{
			{
				ID:   "ksr_moto",
				Name: "KSR Moto",
				// Website: "https://www.ksr-moto.com/nl/",
			},
			{
				ID:   "explorer",
				Name: "Explorer",
			},
			{
				ID:      "lambretta",
				Name:    "Lambretta",
				Website: "https://lambrettascooters.com",
			},
			{
				ID:   "lml",
				Name: "LML",
			},
			{
				ID:   "skyteam",
				Name: "SkyTeam",
			},
		},
		Independant: []Dealer{
			{
				ID:      "yamaha",
				Name:    "Yamaha",
				Website: "https://www.yamahamotorsports.com/scooter",
			},
			{
				ID:      "kymco",
				Name:    "Kymco",
				Website: "https://scooters.kymco.nl/",
			},
			{
				ID:   "mbk",
				Name: "MBK",
			},
			{
				ID:      "peugeot",
				Name:    "Peugeot",
				Website: "https://www.peugeot-motocycles.be/nl.html",
			},
			{
				ID:      "piaggio",
				Name:    "Piaggio",
				Website: "https://www.piaggio.com/be_NL/",
			},
			{
				ID:      "sym",
				Name:    "SYM",
				Website: "https://www.sym.be/nl.html",
			},
			{
				ID:      "vespa",
				Name:    "Vespa",
				Website: "https://www.vespa.com/be_NL",
			},
			{
				ID:      "mash",
				Name:    "MASH",
				Website: "https://mash-motors.be/",
			},
		},
	}
}
