<%inherit file="template_parts/base.template.mako"/>

<%!
    preload = False
    title = "Contact"
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

    <div id="map" hight="400" class="contact-over-map"></div>

    <div class="container">
        <div class="contact-over-box pull-right">
            <h3 class="size-20">Openingsuren</h3>
            <div class="row">
                <div class="col-md-12 margin-bottom-20">
                    % for hour in data['general']['openingsuren']['contact']:
                        <p class="bold margin-bottom-0">${hour['name']}</p>
                        <p class="margin-left-10">${hour['open']}</p>
                    % endfor
                </div>
            </div>

            <h3 class="size-20">Contactgegevens</h3>
            <div class="row">
                <div class="col-md-12 margin-bottom-20">
                    <address>
                        <ul class="list-unstyled">
                            <li class="footer-sprite address">
                                KLOK-RACING<br>
                                Wielewaalstraat 2<br>
                                2340 Beerse<br>
                            </li>
                            <li class="footer-sprite phone">
                                <% phone = data['general']['openingsuren']['phone'] %>
                                <a href="tel:${phone}">${phone}</a>
                            </li>
                            <li class="footer-sprite email">
                                <% email = data['general']['openingsuren']['email'] %>
                                <a href="mailto:${email}">${email}</a>
                            </li>
                        </ul>
                    </address>
                </div>
            </div>
        </div>
    </div>
</section>

<%block name="script">
    <script>
        jQuery(document).ready(function(){
            // Basic setup
            var coord_klokracing = [51.3200969, 4.8376705];
            var mymap = L.map('map').setView(coord_klokracing, 15);

            // Disable scroll wheel
            mymap.scrollWheelZoom.disable()

            // Add map tile layer
            L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
                attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
                maxZoom: 18,
                tileSize: 512,
                zoomOffset: -1,
                id: 'mapbox/streets-v11',
                accessToken: 'pk.eyJ1IjoiamVuc3dpbGxlbXNlbnMiLCJhIjoiY2prcDR1eWp3MTB1dTNwdGRhajhodmJ5ayJ9.y3S0DbYU68APDP5HDTey2w'
            }).addTo(mymap);

            // Add marker for Klokracing
            var marker = L.marker(coord_klokracing).addTo(mymap);
        });
    </script>
</%block>
