<%def name="slide(index, img, alt, title, subtitle)">
<li
data-index="rs-195${index}"
data-transition="slideremovehorizontal"
data-slotamount="default"
data-hideafterloop="0"
data-hideslideonmobile="off"
data-easein="Power1.easeInOut"
data-easeout="Power1.easeInOut"
data-masterspeed="800"
data-thumb="/assets/img/${img}"
data-rotate="0"
data-fstransition="slideremovehorizontal"
data-fsmasterspeed="800"
data-fsslotamount="7"
data-saveperformance="off"

<!-- MAIN IMAGE -->
<img src="/assets/img/1x1.png"  alt=""
data-lazyload="/assets/img/${img}"
data-bgposition="center center"
data-bgfit="cover"
data-bgrepeat="no-repeat"
data-bgparallax="5" class="rev-slidebg"
data-no-retina
alt="${alt}">
<!-- LAYERS -->

<!-- LAYER NR. 1 -->
<div class="tp-caption   tp-resizeme"
id="slide-195${index}-layer-1"

data-x="['left','left','left','left']"
data-hoffset="['30','30','30','20']"

data-y="['top','top','top','top']"
data-voffset="['30','30','30','20']"
data-fontsize="['50','40','30','20']"
data-lineheight="['70','60','50','40']"
data-width="none"
data-height="none"
data-whitespace="nowrap"
data-transform_idle="o:1;"

data-transform_in="x:right(R);s:800;e:Power1.easeInOut;"
data-transform_out="x:left(R);s:800;e:Power1.easeInOut;"

data-start="0"
data-splitin="none"
data-splitout="none"
data-basealign="slide"
data-responsive_offset="on"

style="z-index: 5; white-space: nowrap; font-size: 50px; line-height: 70px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Roboto;background-color:rgba(0, 0, 0, 1.00);padding:0 30px 0 30px;">${title}</div>

<!-- LAYER NR. 2 -->
<div class="tp-caption   tp-resizeme"
id="slide-195${index}-layer-2"

data-x="['left','left','left','left']"
data-hoffset="['30','30','30','20']"

data-y="['top','top','top','top']"
data-voffset="['110','100','90','65']"
data-fontsize="['30','30','20','15']"
data-lineheight="['50','50','40','30']"
data-width="none"
data-height="none"
data-whitespace="nowrap"
data-transform_idle="o:1;"

data-transform_in="x:right(R);s:800;e:Power1.easeInOut;"
data-transform_out="x:left(R);s:800;e:Power1.easeInOut;"

data-start="0"
data-splitin="none"
data-splitout="none"
data-basealign="slide"
data-responsive_offset="on"

style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 50px; font-weight: 300; color: rgba(255, 255, 255, 1.00);font-family:Roboto;background-color:rgba(0, 0, 0, 1.00);padding:0 30px 0 30px;">${subtitle}</div>

</li>
</%def>
