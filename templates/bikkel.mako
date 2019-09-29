<%inherit file="template_parts/base.template.mako"/>

<%!
    preload = False
    title = "Elektrische fietsen"
%>

<%block name="content">
    <section class="page-header page-header-xs dark">
        <div class="container">
            <h1>${self.attr.title.capitalize()}</h1>

            <!-- breadcrumbs -->
            <ol class="breadcrumb">
                <li><a href="/">Start</a></li>
                <li class="active">${self.attr.title}</li>
            </ol><!-- /breadcrumbs -->
        </div>
    </section>


    <section>
        <div class="container">
            <article class="row">
                <div class="col-md-6">
                    <div class="owl-carousel buttons-autohide controlls-over nomargin" data-plugin-options='{"items": 1, "autoHeight": true}'>
                        <div>
                            <img src="/assets/img/bikkel/main.jpg" alt="" class="img-responsive"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <h3>Offici&euml;le dealer Bikkel e-bikes</h3>
                    <p style="font-size: 1.2em">
                        Bikkel Bikes is een Nederlands merk dat zich focust op kwaliteitsvolle en betaalbare fietsen.
                        Als offici&euml;le dealer zit u dus ook goed bij KLOK&#8209;RACING voor een elektrische fiets.
                        Bij ons kan u steeds terecht voor advies over de verschillende modellen en soorten elektrische motors.
                    </p>
                    <p style="font-size: 1.2em">
                        Hieronder vindt u een kleine greep uit het aanbod van Bikkel Bikes.
                        Het volledige aanbod kan je steeds vinden op de
                        <a href="http://bikkelbikes.eu/collectie" target="_blank">website van Bikkel</a>
                        of
                        <a href="/contact.html">spring gerust eens binnen</a>
                        voor persoonlijk advies.
                    </p>
                </div>
            </article>
        </div>

        <div class="container margin-top-50">
            <div id="portfolio" class="clearfix portfolio-isotope portfolio-isotope-3">
                % for bike in range(1,10):
                    <div class="portfolio-item">
                        <div class="item-box">
                            <figure>
                                <img src="/assets/img/bikkel/fiets${bike}.jpg"
                                   class= "img-responsive" width="600" height="399"/>
                            </figure>
                        </div>
                    </div>
                % endfor
            </div>
        </div>
    </section>
</%block>
