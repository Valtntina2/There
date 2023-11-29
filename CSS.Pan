  @-webkit-keyframes roll {
  0% {
    -webkit-transform: rotateX(0) rotateY(0) rotateZ(0);
  }
  50% {
    -webkit-transform: rotateX(0) rotateY(360deg) rotateZ(0);
  }
  100% {
    -webkit-transform: rotateX(360deg) rotateY(360deg) rotateZ(0);
  }
}
@-moz-keyframes roll {
  0% {
    -moz-transform: rotateX(0) rotateY(0) rotateZ(0);
  }
  50% {
    -moz-transform: rotateX(0) rotateY(360deg) rotateZ(0);
  }
  100% {
    -moz-transform: rotateX(360deg) rotateY(360deg) rotateZ(0);
  }
}
@keyframes roll {
  0% {
    transform: rotateX(0) rotateY(0) rotateZ(0);
  }
  50% {
    transform: rotateX(0) rotateY(360deg) rotateZ(0);
  }
  100% {
    transform: rotateX(360deg) rotateY(360deg) rotateZ(0);
  }
}
html {
  width: 100%;
  height: 100%;
}

body {
  min-width: 740px;
  font-family: Verdana, Sans-serif;
  -webkit-font-smoothing: antialiased;
  width: 100%;
  height: 100%;
}
#control_panel {
  padding: 10px;
}

#control_panel > button {
  display: inline-block;
  font: normal 20px/40px Verdana, Sans-serif;
  text-align: center;
  margin-left: 750px;
  margin-top: 220px;
  padding: 0 20px;
  color: white;
  background: red;
  cursor: pointer;
}
#control_panel > button:hover, #control_panel > button.active {
  -webkit-filter: saturate(2);
}
#pano_viewer {
  position: absolute;
  width: 700px;
  height: 400px;
  left: 50%;
  top: 50%;
  margin-left: -350px;
  margin-top: -200px;
  cursor: move;
  overflow: hidden;
}
#cube_box {
  -moz-perspective: 750px;
  -webkit-perspective: 750px;
  perspective: 750px;
  -moz-transform-origin: 3000px 3000px 0 50%;
  -ms-transform-origin: 3000px 3000px 0 50%;
  -webkit-transform-origin: 3000px 3000px 0 50%;
  transform-origin: 3000px 3000px 0 50%;
  -moz-transform-style: preserve-3d;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  width: 6000px;
  height: 6000px;
  margin-left: -2650px;
  margin-top: -2800px;
}

#cube {
  -moz-transform-style: preserve-3d;
  -webkit-transform-style: preserve-3d;
  transform-style: preserve-3d;
  cursor: move;
  position: relative;
  width: 6000px;
  height: 6000px;
}
#cube.animate {
  -webkit-animation: roll 30s linear infinite;
  -moz-animation: roll 30s linear infinite;
  animation: roll 30s linear infinite;
}
#cube img {
  position: absolute;
  opacity: 1;
  top: 1500px;
  left: 1500px;
  width: 3000px;
  height: 3000px;
  -moz-backface-visibility: hidden;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}
#cube img.front {
  -moz-transform: translate3d(0, 0, -1499px);
  -ms-transform: translate3d(0, 0, -1499px);
  -webkit-transform: translate3d(0, 0, -1499px);
  transform: translate3d(0, 0, -1499px);
}
#cube img.left {
  -moz-transform: rotate3d(0, 1, 0, 90deg) translate3d(0, 0, -1499px);
  -ms-transform: rotate3d(0, 1, 0, 90deg) translate3d(0, 0, -1499px);
  -webkit-transform: rotate3d(0, 1, 0, 90deg) translate3d(0, 0, -1499px);
  transform: rotate3d(0, 1, 0, 90deg) translate3d(0, 0, -1499px);
}
#cube img.right {
  -moz-transform: rotate3d(0, 1, 0, -90deg) translate3d(0, 0, -1499px);
  -ms-transform: rotate3d(0, 1, 0, -90deg) translate3d(0, 0, -1499px);
  -webkit-transform: rotate3d(0, 1, 0, -90deg) translate3d(0, 0, -1499px);
  transform: rotate3d(0, 1, 0, -90deg) translate3d(0, 0, -1499px);
}
#cube img.back {
  -moz-transform: rotate3d(0, 1, 0, 180deg) translate3d(0, 0, -1499px);
  -ms-transform: rotate3d(0, 1, 0, 180deg) translate3d(0, 0, -1499px);
  -webkit-transform: rotate3d(0, 1, 0, 180deg) translate3d(0, 0, -1499px);
  transform: rotate3d(0, 1, 0, 180deg) translate3d(0, 0, -1499px);
}
#cube img.top {
  -moz-transform: rotate3d(1, 0, 0, -90deg) translate3d(0, 0, -1499px);
  -ms-transform: rotate3d(1, 0, 0, -90deg) translate3d(0, 0, -1499px);
  -webkit-transform: rotate3d(1, 0, 0, -90deg) translate3d(0, 0, -1499px);
  transform: rotate3d(1, 0, 0, -90deg) translate3d(0, 0, -1499px);
}
#cube img.bottom {
  -moz-transform: rotate3d(1, 0, 0, 90deg) translate3d(0, 0, -1499px);
  -ms-transform: rotate3d(1, 0, 0, 90deg) translate3d(0, 0, -1499px);
  -webkit-transform: rotate3d(1, 0, 0, 90deg) translate3d(0, 0, -1499px);
  transform: rotate3d(1, 0, 0, 90deg) translate3d(0, 0, -1499px);
}
