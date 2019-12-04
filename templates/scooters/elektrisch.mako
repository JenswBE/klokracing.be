<%inherit file="/template_parts/base.template.mako"/>

<%!
    preload = False
    title = "Elektrische scooters"
%>

<section class="page-header page-header-xs dark">
    <div class="container">
        <h1>${title.upper()}</h1>
        <ol class="breadcrumb">
            <li><a href="/">Start</a></li>
            <li class="active">${title}</li>
        </ol>
    </div>
</section>

<section>
    <div class="container">
        <article class="row">
            <div class="col-md-12">
                <h3>Offici&euml;le dealer Lifan elektrische scooters</h3>
                <p style="font-size: 1.2em">
                    Hieronder vind je een paar afbeeldingen uit het aanbod van Lifan Scooters.
                    Het volledige aanbod kan je steeds vinden op de
                    <a href="https://lifanmotors.be" target="_blank">website van Lifan</a>
                    of
                    <a href="/contact">spring gerust eens binnen</a>
                    voor persoonlijk advies.
                </p>
            </div>
        </article>
    </div>

    <div class="container margin-top-50">
        <div id="portfolio" class="clearfix portfolio-isotope portfolio-isotope-3">
            % for scooter in range(1,10):
                <div class="portfolio-item">
                    <div class="item-box">
                        <figure>
                          <img src="/assets/img/lifan/Lifan${scooter}.jpg"
                             class= "img-responsive" width="600" height="399"/>
                        </figure>
                    </div>
                </div>
            % endfor
        </div>
    </div>
</section>
