mobileAppGenerator.controller('MobileAppConfigController',function($scope,StyleService,fileReader){
	
	$scope.changeStyle = function(category,value,key,property){
		StyleService.changeStyle(category,value,key,property);
	};
	
	$scope.toggleComponent = function(category,value){
		StyleService.toggleComponent(category,value);
	}
	
	$scope.getFile = function (category,isCssImage) {
        $scope.progress = 0;
        fileReader.readAsDataUrl($scope.file, $scope)
                      .then(function(result) {
                          $scope.imageSrc = result;
                          StyleService.changeImage(category,$scope.imageSrc,isCssImage);
                      });
    };
 
    $scope.$on("fileProgress", function(e, progress) {
        $scope.progress = progress.loaded / progress.total;
    });
	
	$scope.conf = {
			baseUrl:"http://monsite.com",
			layout:{
				cover:true,
				vote:true,
				social:true,
				dedicace:true
				},
			style:{
				track:{
					background:"",
					author:"",
					title:""
				},
				program:{
					background:"",
					program:"",
					animator:"",
					border:""
				},
				podcast:{
					background:"",
					title:"",
					duration:"",
					border:""
				},
				news:{
					background:"",
					title:"",
					text:"",
					date:"",
					border:""
				}
			}
				};
});