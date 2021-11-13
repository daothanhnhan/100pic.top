 <div id="Header-Slide">

     <div class="Center-Slide">

         <div class="Infor-Slide">

             <div id="mainSlide">

                 <div id="slider1_container" style="position: relative; width: 1903px;

                height: 392px; overflow: hidden;">

                     <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 1903px; height:392px;

                    overflow: hidden;">

                        <?php

                            $array = json_decode($rowConfig['slideshow_home'], true);

                            foreach ($array as $key => $val) {

                                $img = json_decode($val, true);

                                if ($img != '') {

                        ?>

                         <div class="gb-slide-item" style="background-image: url(/images/<?php echo $img['image'];?>);background-size: cover;">

                             <div class="caption" style="display: none;">

                                 <a class="hero__link link-inverted font-sm track"
                                     data-track-arguments="portada,click_irDetalle_fondo_buscador" href="#">Download
                                     this background from <span class="text__general--text-inverted">100pic</span></a>

                             </div>
 
                            </div>
                         <?php } }?>

                     </div>

                     <style>
                         .caption {

                             position: absolute;
                             z-index: 1;
                             top: 100%;
                             left: 35%;
                             right: -20px;
                             transform: translate(-49%, -33%) !important;
                             border: 0px solid #fff;
                             height: 330px;
                             font-size: 19px;
                             color: #fff;



                         }

                         .jssorb03 div,
                         .jssorb03 div:hover,
                         .jssorb03 .av {
                             background: url(images/b03.png) no-repeat;
                             overflow: hidden;
                             cursor: pointer;
                         }

                         .jssorb03 div {
                             background-position: -5px -4px;
                         }

                         .jssorb03 div:hover,
                         .jssorb03 .av:hover {
                             background-position: -35px -4px;
                         }

                         .jssorb03 .av {
                             background-position: -65px -4px;
                         }

                         .jssorb03 .dn,
                         .jssorb03 .dn:hover {
                             background-position: -95px -4px;
                         }
                     </style>

                     <div u="navigator" class="jssorb03" style="position: absolute; bottom: 16px; left: 6px;">

                         <div u="prototype"
                             style="POSITION: absolute; WIDTH: 21px; HEIGHT: 21px; text-align:center; line-height:21px; color:White; font-size:12px;">
                             <div u="numbertemplate"></div>
                         </div>

                     </div>

                     <style>
                         .jssora20l,
                         .jssora20r,
                         .jssora20ldn,
                         .jssora20rdn {
                             position: absolute;
                             cursor: pointer;
                             display: block;
                             background: url(../images/a20.png) no-repeat;
                             overflow: hidden;
                         }

                         .jssora20l {
                             background-position: -3px -33px;
                         }

                         .jssora20r {
                             background-position: -63px -33px;
                         }

                         .jssora20l:hover {
                             background-position: -123px -33px;
                         }

                         .jssora20r:hover {
                             background-position: -183px -33px;
                         }

                         .jssora20ldn {
                             background-position: -243px -33px;
                         }

                         .jssora20rdn {
                             background-position: -303px -33px;
                         }
                     </style>

                     <!-- <div class="shadowSlideL"></div>

                     <div class="shadowSlideR"></div>

                     <span u="arrowleft" class="jssora20l" style="width: 55px; height: 55px; top: 123px; left: 140px;">

                     </span>

                     <span u="arrowright" class="jssora20r"
                         style="width: 55px; height: 55px; top: 123px; right: 140px;">

                     </span> -->

                 </div>
                 <!--end slider1_container-->

             </div>
             <!--end mainSlide-->

             <!--Main Slide-->

             <script type="text/javascript" src="/plugin/jssor/jssor.js"></script>

             <script type="text/javascript" src="/plugin/jssor/jssor.slider.js"></script>

             <script type="text/javascript" src="/plugin/jssor/Main-Slide-Effect.js"></script>

         </div>
         <!--end Infor-Slide-->

     </div>
     <!--end Center-Slide-->

 </div>

 <!--end Header-Slide-->