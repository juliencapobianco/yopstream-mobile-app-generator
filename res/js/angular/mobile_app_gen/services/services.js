mobileAppGenerator.service('StyleService',function(settings){
	
	this.changeStyle = function(category,value,key,property){
		var elts = angular.element(frames[0].document.getElementsByClassName(settings.mapping[category]['className']))
		if(key)
			elts.find(settings.mapping[category][key]).css(property||'color',value);
		else
			elts.css(property||'color',value);
	};
	
	this.toggleComponent = function(category,value){
		var elts = angular.element(frames[0].document.getElementsByClassName(settings.mapping[category]['hideClassName'])).css("visibility",value?"visible":"hidden");
	};
	
	this.changeImage = function(category,src,isCssImage){
		var elts = angular.element(frames[0].document.getElementsByClassName(settings.mapping[category]['className']))
		if(isCssImage)
			elts.css('background','url('+src+')');
		else
			elts.attr('src',src);
	};
	
	
});