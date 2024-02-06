package data

type Contact struct {
	Phone       string
	Email       string
	CompanyName string
	VATNumber   string
	Website     string
	TermsPage   string
	// https://nl.wikipedia.org/wiki/Gerechtelijk_arrondissement
	LegalDistrict string
}

func GetContact() Contact {
	return Contact{
		Phone:         "+32 477 79 05 26",
		Email:         "info@klokracing.be",
		CompanyName:   "KLOK-RACING",
		VATNumber:     "BE0686.482.064",
		Website:       "https://klokracing.be",
		TermsPage:     "/algemene-voorwaarden/",
		LegalDistrict: "Antwerpen (afdeling Turnhout)",
	}
}
