package main

import (
	"net/url"
	"os/exec"
	"strings"
	"text/template"

	"github.com/JenswBE/go-pipeline/pipeline"
	"github.com/JenswBE/klokracing.be/data"
	"github.com/rs/zerolog/log"
)

func main() {
	// Copy static content
	cmd := exec.Command("cp", "-R", "static/.", "output/")
	output, err := cmd.CombinedOutput()
	if err != nil {
		log.Fatal().Err(err).Str("cmd", cmd.String()).Bytes("output", output).Msg("Failed to copy static assets")
	}

	pipeline.
		NewHTML(template.FuncMap{
			"rangeRepeat": rangeRepeat,
			"toUpper":     strings.ToUpper,
			"urlJoin":     url.JoinPath,
		}).
		WithTemplatesDir("templates").
		WithOutputDir("output").
		LoadGlob("layout_*.gohtml").
		SetData("Contact", data.GetContact()).
		SetData("Dealers", data.GetDealers()).
		SetData("IndexSlides", data.GetIndexSlides()).
		SetData("Openingsuren", data.GetOpeningsuren()).
		SetData("Title", "Start").
		LoadRenderSingle("page_index.gohtml", "index.html").
		SetData("Title", "Pagina niet gevonden").
		LoadRenderSingle("page_404.gohtml", "404.html").
		SetData("Title", "Algemene voorwaarden").
		LoadRenderSingle("page_algemene-voorwaarden.gohtml", "algemene-voorwaarden/index.html").
		SetData("Title", "Elektrische fietsen").
		LoadRenderSingle("page_bikkel.gohtml", "bikkel/index.html").
		SetData("Title", "Contact").
		LoadRenderSingle("page_contact.gohtml", "contact/index.html").
		SetData("Title", "Onderdelen").
		LoadRenderSingle("page_onderdelen.gohtml", "onderdelen/index.html").
		SetData("Title", "Scooters").
		LoadRenderSingle("page_scooters_benzine.gohtml", "scooters/benzine/index.html").
		SetData("Title", "Elektrische scooters").
		LoadRenderSingle("page_scooters_elektrisch.gohtml", "scooters/elektrisch/index.html").
		Must()
}

func rangeRepeat(start, count int) []int {
	output := make([]int, count)
	for i := range output {
		output[i] = start + i
	}
	return output
}
