$(document).ready(function() {
	var size = 16;
	build_grid(size);

	function build_grid(n){
		$("tbody tr").remove();
	
		var $table = $("tbody");
		var $tr;
		
		for (var i = 0; i < n; i++){
			$tr = $("<tr></tr>");
			$table.append($tr);
			
			for (var j = 0; j < n; j++){
				$tr.append($("<td></td>"));
			}
		}
		
		$("td").mouseenter(function() {
			$(this).animate({opacity : "+=0.10"}, "fast");
		});
	}
	
	$("button[name='reset']").click(function() {
		size = prompt("How many squares on one side of the grid?");
		build_grid(size);
	});
});