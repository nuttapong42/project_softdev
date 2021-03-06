<?php 


 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="shortcut icon" href="./img/favicon.png" />
    <meta name="og:type" content="website" />
    <meta name="twitter:card" content="photo" />
    <link rel="stylesheet" type="text/css" href="css/flight-eta.css" />
    <style>
      @font-face {
        font-family: "SFPro Display-Bold";
        src: url("https://anima-uploads.s3.amazonaws.com/5ad84aa54ce72e000be60463/SF-Pro-Display-Bold.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Display-Light";
        src: url("https://anima-uploads.s3.amazonaws.com/5911b234d19ef1000b84e188/SF-Pro-Display-Light.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Text-Regular";
        src: url("https://anima-uploads.s3.amazonaws.com/5b7d556a58482d00094a3c58/SF-Pro-Text-Regular.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Text-Medium";
        src: url("https://anima-uploads.s3.amazonaws.com/5ad84aa54ce72e000be60463/SF-Pro-Text-Medium.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Display-Medium";
        src: url("https://anima-uploads.s3.amazonaws.com/5ad84aa54ce72e000be60463/SF-Pro-Display-Medium.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Text-Semibold";
        src: url("https://anima-uploads.s3.amazonaws.com/5af2b9571afd72000d7270b4/SF-Pro-Text-Semibold.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Text-Bold";
        src: url("https://anima-uploads.s3.amazonaws.com/5ad84aa54ce72e000be60463/SF-Pro-Text-Bold.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Display-Semibold";
        src: url("https://anima-uploads.s3.amazonaws.com/5ad84aa54ce72e000be60463/SF-Pro-Display-Semibold.otf")
          format("opentype");
      }

      @font-face {
        font-family: "SFPro Display-Regular";
        src: url("https://anima-uploads.s3.amazonaws.com/5b7d556a58482d00094a3c58/SF-Pro-Display-Regular.otf")
          format("opentype");
      }
      .anima-component-wrapper a,
      .anima-screen a {
        text-decoration: none;
        display: contents;
      }

      .anima-full-width-a {
        width: 100%;
      }

      .anima-full-height-a {
        height: 100%;
      }

      .anima-screen textarea:focus,
      .anima-screen input:focus {
        outline: none;
      }

      .anima-screen *,
      .anima-component-wrapper * {
        box-sizing: border-box;
      }

      .anima-screen div {
        -webkit-text-size-adjust: none;
      }

      .anima-container-center-vertical,
      .anima-container-center-horizontal {
        pointer-events: none;
        display: flex;
        flex-direction: row;
        padding: 0;
        margin: 0;
      }

      .anima-container-center-vertical {
        align-items: center;
        height: 100%;
      }

      .anima-container-center-horizontal {
        justify-content: center;
        width: 100%;
      }

      .anima-container-center-vertical > *,
      .anima-container-center-horizontal > * {
        pointer-events: auto;
        flex-shrink: 0;
      }

      .anima-component-wrapper,
      .anima-screen {
        overflow-wrap: break-word;
        word-wrap: break-word;
        word-break: break-all;
        word-break: break-word;
      }

      .anima-auto-animated div {
        opacity: 0;
        position: absolute;
        --anima-z-index: -1;
      }

      .anima-auto-animated .anima-container-center-vertical,
      .anima-auto-animated .anima-container-center-horizontal {
        opacity: 1;
      }

      .anima-overlay {
        position: absolute;
        opacity: 0;
        display: none;
        top: 0;
        width: 100%;
        height: 100%;
        position: fixed;
      }

      .anima-animate-appear {
        opacity: 0;
        display: block;
        animation: anima-reveal 0.3s ease-in-out 1 normal forwards;
      }

      .anima-animate-disappear {
        opacity: 1;
        display: block;
        animation: anima-reveal 0.3s ease-in-out 1 reverse forwards;
      }

      .anima-animate-nodelay {
        animation-delay: 0s;
      }

      @keyframes anima-reveal {
        from {
          opacity: 0;
        }
        to {
          opacity: 1;
        }
      }
      .align-self-flex-start {
        align-self: flex-start;
      }
      .align-self-flex-end {
        align-self: flex-end;
      }
      .align-self-flex-center {
        align-self: center;
      }
      .anima-valign-text-middle {
        display: flex;
        flex-direction: column;
        justify-content: center;
      }
      .anima-valign-text-bottom {
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
      }
      .anima-component-wrapper,
      .anima-component-wrapper * {
        pointer-events: none;
      }

      .anima-component-wrapper a *,
      .anima-component-wrapper a,
      .anima-component-wrapper input,
      .anima-component-wrapper video,
      .anima-component-wrapper iframe,
      .anima-listeners-active,
      .anima-listeners-active * {
        pointer-events: auto;
      }

      .anima-hidden,
      .anima-hidden * {
        visibility: hidden;
        pointer-events: none;
      }

      .anima-smart-layers-pointers,
      .anima-smart-layers-pointers * {
        pointer-events: auto;
        visibility: visible;
      }

      .anima-component-wrapper.anima-not-ready,
      .anima-component-wrapper.anima-not-ready * {
        visibility: hidden !important;
      }

      .anima-listeners-active-click,
      .anima-listeners-active-click * {
        cursor: pointer;
      }
    </style>
    <meta name="author" content="AnimaApp.com - Design to code, Automated." />
  </head>
  <body style="margin: 0; background: rgba(255, 255, 255, 1)">
    <input type="hidden" id="anPageName" name="page" value="flight-eta" />
    <div class="anima-container-center-horizontal">
      <div class="flight-eta anima-screen">
        <div class="status-bar-C61RwL">
          <div class="status-bar-ASWxeQ">
            <div class="">
              <div class="border-NZfiAq border-class-2"></div>
              
              <div class="capacity-NZfiAq"></div>
            </div>
            <img class="" />
            <img class="" src="" />
            <div class="">
              <div class="time-KRAbRt font-class-9"></div>
            </div>
          </div>
        </div>
        <div class="group-63-C61RwL">
          <div class="group-34-L0cjLb">
            <img class="background-Ll9s2x" src="img/background-5@1x.png" />
            <div class="group-33-Ll9s2x">
              <div class="large-title-TfidM2 font-class-3">Krabi International airport&nbsp;&nbsp;</div>
              <div class="large-title-WmbDAh">
                <span class="span0-8zDgxY">9:30<br /></span><span class="span1-8zDgxY">Schedule Departure </span>
              </div>
              <div class="large-title-8UBrTo font-class-1">BVK</div>
              <div class="large-title-NMIzax font-class-1">From</div>
              <div class="group-26-TfidM2">
                <div class="large-title-km8OZB font-class-3">Suvarnabhumi</div>
                <div class="large-title-bE8294 font-class-1">To</div>
                <div class="large-title-xsUbTz font-class-1">BKK</div>
              </div>
              <div class="large-title-xESnE9">
                <span class="span0-oY34aQ">10:55<br /></span
                ><span class="span1-oY34aQ">Schedule Arrival&nbsp;&nbsp;</span>
              </div>
            </div>
            <img class="vietjet-airlogored-Ll9s2x" src="img/vietjet-air-logo-red@1x.png" />
            <img class="airplane-black-Ll9s2x" src="img/airplane-black@1x.png" />
          </div>
          <div class="large-title-L0cjLb font-class-1">
            Schedule&nbsp;&nbsp;· 9:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Seat&nbsp;&nbsp;· F32
          </div>
          <div class="large-title-xBrBlv">
            <br />Real-time status for this flight isn’t shown because,<br />
            historically, it hasn’t always been accurate.
          </div>
          <div class="large-title-nKYAcY font-class-1">
            Gate&nbsp;&nbsp;· A6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Terminal&nbsp;&nbsp; · 1
          </div>
        </div>
        <div class="status-bar-VMr6Om">
          <div class="status-bar-FxvGw6">
            <div class="">
              <div class=""></div>
             
              <div class=""></div>
            </div>
            
            <div class="time-style-lXkwSa">
              <div class="time-skpBmK font-class-9"></div>
            </div>
          </div>
        </div>
        <div class="group-57-C61RwL">
          <div class="group-70-AwXtS8">
            <img class="x64-mnL5Iy" src="img/6-4-@1x.png" />
            <div class="the-next-high-tide-i-mnL5Iy">Flight Estimated Time Departure&nbsp;&nbsp;</div>
          </div>
        </div>
        <img class="airplanecirclefill-C61RwL" src="img/airplane-circle-fill-1@1x.png" />
        <img class="airplanecirclefill-VMr6Om" src="img/airplane-circle-fill-1@1x.png" />
        <a href="booking-without-destination.html">
          <div class="button-shape-C61RwL">
            <div class="booking-pvgYHY">Booking</div>
          </div></a
        >
        <div class="large-title-C61RwL font-class-1">Flightradar24.com</div>
        <div class="group-71-C61RwL">
          <div class="bars-navig-ith-search-R3ERnh">
            <div class="navigation-background-ynOtxc">
              <img class="background-vKiZvJ" src="img/background-17@1x.png" />
            </div>
            <div class="search-field-type-ynOtxc">
              <div class="search-field-IOK5Mj">
                <div class="placeholder-label-6baod0">VZ345</div>
                <img class="micfill-6baod0" src="img/mic-fill-1@1x.png" />
              </div>
            </div>
            <div class="right-accessory-ynOtxc"></div>
            <div class="flight-etd-ynOtxc font-class-6">Flight ETD</div>
            <a href="index.php">
              <div class="left-accessory-ynOtxc">
                <div class="parent-title-4T7m0q font-class-7">Back</div>
                <img class="back-meduim-4T7m0q" src="img/back-meduim-10@1x.png" /></div
            ></a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
