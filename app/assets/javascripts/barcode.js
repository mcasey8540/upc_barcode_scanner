  $('#upc-submit').click(function(){
  	var upcValue = $("#upc-input").val();

		$.ajax({
		  dataType: "json",
		  url: "/search-brand/" + upcValue,
		  success: function(data){
		  	 results = formatResults(data.result);
		  	$("#upc-brand-results").val(results);
		  }
		});

		$.ajax({
		  dataType: "json",
		  url: "/search-nutrition/" + upcValue,
		  success: function(data){
		  	 results = formatResults(data.result);
		  	$("#upc-nutrition-results").val(results);
		  }
		});			

		formatResults = function(data){
			return JSON.stringify(data);
		}

  });
