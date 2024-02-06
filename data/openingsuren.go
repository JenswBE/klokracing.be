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
		Footer: "MA, DI, DO: 18h - 20h30 • WOE: 18h - 20h30 • VR: 9h - 18h",
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
				Open: "18h - 20h30",
			},
			{
				Name: "DONDERDAG",
				Open: "9h - 20h30",
			},
			{
				Name: "VRIJDAG",
				Open: "9h - 18h",
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
