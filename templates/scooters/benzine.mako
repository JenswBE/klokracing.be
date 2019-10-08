<%inherit file="/template_parts/base.template.mako"/>

<%!
    preload = False
    title = "Scooters"
%>

<%
    page_data = data['general']['pages']['scooters']
%>

<section class="page-header page-header-xs dark">
    <div class="container">
        <h1>SCOOTERS</h1>
        <ol class="breadcrumb">
            <li><a href="/">Start</a></li>
            <li class="active">${title}</li>
        </ol>
    </div>
</section>

<section>
    <div class="container">
        <article class="row">
            <div class="col-md-6">
                <div class="owl-carousel buttons-autohide controlls-over nomargin" data-plugin-options='{"items": 1, "autoHeight": true}'>
                    <div>
                        <img src="/assets/img/nieuwe_scooters.jpg" class="img-responsive"/>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <h3>Uw brommer- en scooterdealer</h3>
                <p style="font-size: 1.2em">
                    Bij KLOK-RACING kan u terecht voor zowel nieuwe als tweedehands scooters en brommers.
                    Bij een bezoek aan onze zaak, kan je steeds rekenen op een persoonlijk advies.
                    Hierdoor kan je d&eacute; scooter vinden die aansluit bij zowel je wensen als je budget.
                </p>
                <p style="font-size: 1.2em">
                    <a href="/contact">Spring gerust eens binnen!</a>
                </p>
            </div>
        </article>
    </div>
</section>

<section>
    <div class="container">
        ${dealer_list('Offici&euml;le dealer van', page_data['dealers']['official'])}
        ${dealer_list('Onafhankelijk dealer van', page_data['dealers']['independant'])}
    </div>
</section>

<%def name="dealer_list(title, manufacturers)">
    <div class="row">
        <div class="col-md-12">
            <h3>${title}</h3>

            <div class="text-center margin-top-30 margin-bottom-30">
                <div class="owl-carousel nomargin" data-plugin-options='{"items":5, "singleItem": false, "autoPlay": false}'>
                    % for m in manufacturers:
                        <%
                        img = '<img src="/assets/img/manufacturers/{}-carousel.jpg" alt="Logo {}" class="img-responsive"/>'.format(m['id'], m['name'])
                        website = m.get('website', False)
                        if website and website[0:4] == 'http':
                            img = '<a href="{}" target="_blank">{}</a>'.format(website, img)
                        %>

                        <div>
                            ${img | n}
                        </div>
                    % endfor
                </div>
            </div>
        </div>
    </div>
</%def>
