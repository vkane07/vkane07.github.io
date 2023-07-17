function throttle(a, n) {
	var e = null;
	return function() {
		var t = this,
			s = arguments;
		clearTimeout(e), e = setTimeout((function() {
			a.apply(t, s)
		}), n)
	}
}

function loadTagCloud() {
	try {
		function a() {
			var a = $("#resCanvas");
			a.get(0)
				.width = 1.2 * a.width(), a.get(0)
				.height = 1.2 * a.width(), TagCanvas.Start("resCanvas"), TagCanvas.tc.resCanvas.Wheel(!0)
		}
		//TagCanvas.textFont = "Helvetica",
        TagCanvas.textFont = "Georgia,Optima",
        TagCanvas.textColour = "#ffccff",
        TagCanvas.textHeight = 16, 
        TagCanvas.outlineColour = "#cc99ff", 
        TagCanvas.maxSpeed = 0.15, 
       // TagCanvas.freezeActive = !0, 
        TagCanvas.outlineMethod = "block", 
        TagCanvas.minBrightness = .2, 
        TagCanvas.depth = .92, 
        TagCanvas.pulsateTo = .6, 
        TagCanvas.initial = [.1, -.1], 
        TagCanvas.decel = .5, 
        // TagCanvas.reverse = !0, 
        TagCanvas.reverse = true, 
        TagCanvas.hideTags = !1, 
        TagCanvas.shadow = "#C3D6E8", 
        TagCanvas.shadowBlur = 2, 
        TagCanvas.weight = !1, 
        TagCanvas.imageScale = null, 
        TagCanvas.fadeIn = 500, 
        TagCanvas.clickToFront = 600, 
        TagCanvas.lock = !1, a(), $(window)
			.resize(throttle(a, 500))
	} catch (a) {
		console.log(a), document.getElementById("myCanvasContainer")
			.style.display = "none"
	}
}
document.addEventListener("DOMContentLoaded", loadTagCloud);