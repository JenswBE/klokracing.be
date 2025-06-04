package data

type Openingsuren struct {
	Footer  string
	Contact []OpeningsurenContact
}

type OpeningsurenContact struct {
	Name string
	Open string
}

func GetOpeningsuren() Openingsuren {
	return Openingsuren{
		Footer: "MA, DI, DO: 18h - 20h30 • VR: 9h - 17h30 • WOE, ZA, ZO: Gesloten",
		Contact: []OpeningsurenContact{
			{
				Name: "MAANDAG",
				Open: "9h - 20h30",
			},
			{
				Name: "DINSDAG",
				Open: "9h - 20h30",
			},
			{
				Name: "WOENSDAG",
				Open: "GESLOTEN",
			},
			{
				Name: "DONDERDAG",
				Open: "9h - 20h30",
			},
			{
				Name: "VRIJDAG",
				Open: "9h - 17h30",
			},
			{
				Name: "ZATERDAG",
				Open: "GESLOTEN",
			},
			{
				Name: "ZONDAG",
				Open: "GESLOTEN",
			},
		},
	}
}
