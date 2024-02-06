package data

type IndexSlide struct {
	Index    uint
	Image    string
	Alt      string
	Title    string
	Subtitle string
}

func GetIndexSlides() []IndexSlide {
	return []IndexSlide{
		{
			Index:    0,
			Image:    "takelen.jpg",
			Alt:      "Een scooter die getakeld wordt",
			Title:    "Heeft u panne?",
			Subtitle: "Geen probleem! KLOK-RACING haalt uw scooter op.",
		},
		{
			Index:    1,
			Image:    "maken.jpg",
			Alt:      "Een scooter die wordt hersteld",
			Title:    "Kunt u uw scooter niet missen?",
			Subtitle: "Wordt - indien mogelijk - hersteld terwijl u wacht.",
		},
		{
			Index:    2,
			Image:    "verkoop.jpg",
			Alt:      "Een rij met scooters en brommers",
			Title:    "Enkel het nieuwste of een beperkt budget?",
			Subtitle: "Breed aanbod van nieuwe en tweedehands scooters.",
		},
	}
}
