var mobileAppGenerator = angular.module('mobileAppGenerator', ['ui.bootstrap','colorpicker.module','upload.module'])
.constant("settings",{
	mapping:{
		logo:{
			className:"full-image"
		},
		vote:{
			hideClassName:"vote"
		},
		track:{
			className:"track-info",
			author:"h1",
			title:"h2"		
		},
		podcast:{
			className:"podcast",
			title:"h1",
			duration:"p"
		},
		program:{
			className:"programs-info",
			title:"h1",
			animator:"h2"
		},
		news:{
			className:"news",
			title:"h1",
			date:"p"
		}
	}
		}
)
.directive("ngFileSelect",function(){

	  return {
	    link: function($scope,el){
	      
	      el.bind("change", function(e){
	      
	        $scope.file = (e.srcElement || e.target).files[0];
	        $scope.getFile("logo");
	      })
	      
	    }
	    
	  }
	  
	  
	});
