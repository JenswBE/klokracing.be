<%inherit file="template_parts/base.template.mako"/>

<%!
    preload = False
    title = "Onderdelen"
%>

<%block name="css">
    #footer {
      position: fixed;
      bottom: 0;
      width: 100%;
      height: 70px; /* Set the fixed height of the footer here */
    }
</%block>

<section class="page-header page-header-xs dark">
    <div class="container">
        <h1>${title.upper()}</h1>

        <!-- breadcrumbs -->
        <ol class="breadcrumb">
            <li><a href="/">Start</a></li>
            <li class="active">${title}</li>
        </ol><!-- /breadcrumbs -->
    </div>
</section>

<section>
    <div class="container">
        <article class="row">
            <div class="col-md-6">
                <div class="owl-carousel buttons-autohide controlls-over nomargin" data-plugin-options='{"items": 1, "autoHeight": true}'>
                    <div>
                        <img src="/assets/img/onderdelen.jpg" alt="" class="img-responsive"/>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h3>Jouw leverancier voor onderdelen</h3>
                <p style="font-size: 1.2em">
                    Ben je op zoek naar nieuwe of tweedehands onderdelen? Ook hiervoor
                    kan je terecht bij KLOK-RACING.
                </p>

                <p style="font-size: 1.2em">
                    Je kan steeds rekenen op deskundig advies bij het maken van jouw
                    keuze. Ook het monteren van de onderdelen is mogelijk in samenspraak.
                </p>

                <p style="font-size: 1.2em">
                    Neem gerust eens een kijkje op de
                    <a href="https://mokix.com" target="_blank">website van Mokix</a>
                    voor een greep uit ons aanbod. Kan je het gewenste onderdeel niet
                    vinden of heb je liever advies op maat,
                    <a href="/contact">spring dan gerust eens binnen</a>.
                </p>
            </div>
        </article>
    </div>
</section>
