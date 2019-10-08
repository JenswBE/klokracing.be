<%inherit file="template_parts/base.template.mako"/>
<%namespace name="rs_slide" file="template_parts/rs_slide.part.mako"/>

<%!
    preload = True
    title = "Start"
%>

<!-- START REVOLUTION SLIDER 5.3.0 fullwidth mode -->
<div id="rev_slider_647_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="car-dealership" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
    <div id="rev_slider_647_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.3.0">
        <ul>
            % for slide in data['general']['pages']['index']['slides']:
              ${rs_slide.slide(loop.index, slide['img'], slide['alt'], slide['title'], slide['subtitle'])}
            % endfor
        </ul>
<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>	</div>
</div>
<!-- END REVOLUTION SLIDER -->

<!-- FEATURES -->
<section id="features">
    <div class="container">

        <header class="text-center margin-bottom-60">
            <h2>Welkom bij KLOK-RACING</h2>
            <p class="lead font-lato">Uw brommer- en scooterdealer</p>
            <hr />
        </header>

        <!-- FEATURED BOXES 3 -->
        <div class="row">
            <div class="col-md-3 col-xs-6">
                <div class="text-center">
                    <i class="ico-color ico-lg ico-rounded ico-hover et-tools-2"></i>
                    <h4>Kennis</h4>
                    <p>Meer dan 30 jaar ervaring.</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="text-center">
                    <i class="ico-color ico-lg ico-rounded ico-hover et-happy"></i>
                    <h4>Persoonlijk</h4>
                    <p>Steeds advies en hulp op maat.</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="text-center">
                    <i class="ico-color ico-lg ico-rounded ico-hover et-trophy"></i>
                    <h4>Kwaliteit</h4>
                    <p>Minder problemen, meer rijplezier.</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="text-center">
                    <i class="ico-color ico-lg ico-rounded ico-hover et-gears"></i>
                    <h4>Onderdelen</h4>
                    <p>Breed aanbod van onderdelen leverbaar.</p>
                </div>
            </div>
        </div>
        <!-- /FEATURED BOXES 3 -->
    </div>
</section>

<%block name="script">
  <script src="/assets/plugins/slider.revolution.v5/js/jquery.themepunch.tools.min.js"></script>
  <script src="/assets/plugins/slider.revolution.v5/js/jquery.themepunch.revolution.min.js"></script>
  <script>
    var revapi647;
    jQuery(document).ready(function() {
        if (jQuery("#rev_slider_647_1").revolution == undefined) {
            revslider_showDoubleJqueryError("#rev_slider_647_1");
        } else {
            revapi647 = jQuery("#rev_slider_647_1").show().revolution({
                sliderType:"standard",
                jsFileLocation: plugin_path + "slider.revolution.v5/js/",
                sliderLayout:"fullwidth",
                dottedOverlay:"none",
                delay:5000,
                navigation: {
                    keyboardNavigation:"off",
                    keyboard_direction: "horizontal",
                    mouseScrollNavigation:"off",
                    mouseScrollReverse:"default",
                    onHoverStop:"on",
                    touch:{
                        touchenabled:"on",
                        swipe_threshold: 75,
                        swipe_min_touches: 1,
                        swipe_direction: "horizontal",
                        drag_block_vertical: false
                    }
                    ,
                    arrows: {
                        style:"metis",
                        enable:true,
                        hide_onmobile:false,
                        hide_onleave:false,
                        tmp:"",
                        left: {
                            h_align:"left",
                            v_align:"center",
                            h_offset:0,
                            v_offset:0
                        },
                        right: {
                            h_align:"right",
                            v_align:"center",
                            h_offset:0,
                            v_offset:0
                        }
                    }
                    ,
                    bullets: {
                        enable:true,
                        hide_onmobile:true,
                        hide_under:768,
                        style:"hermes",
                        hide_onleave:false,
                        direction:"horizontal",
                        h_align:"center",
                        v_align:"bottom",
                        h_offset:0,
                        v_offset:30,
                        space:5,
                        tmp:""
                    }
                },
                responsiveLevels:[1240,1024,778,480],
                visibilityLevels:[1240,1024,778,480],
                gridwidth:[1240,1024,778,480],
                gridheight:[650,600,550,450],
                lazyType:"smart",
                parallax: {
                    type:"scroll",
                    origo:"enterpoint",
                    speed:400,
                    levels:[5,10,15,20,25,30,35,40,45,46,47,48,49,50,51,55],
                    type:"scroll",
                    disable_onmobile:"on"
                },
                shadow:0,
                spinner:"off",
                stopLoop:"off",
                stopAfterLoops:0,
                stopAtSlide:0,
                shuffle:"off",
                autoHeight:"off",
                disableProgressBar:"on",
                hideThumbsOnMobile:"off",
                hideSliderAtLimit:0,
                hideCaptionAtLimit:0,
                hideAllCaptionAtLilmit:0,
                debugMode:false,
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            });
        }
    });
  </script>
</%block>
