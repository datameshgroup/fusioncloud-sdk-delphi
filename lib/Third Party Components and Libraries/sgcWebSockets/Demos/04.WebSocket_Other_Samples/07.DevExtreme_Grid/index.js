$(function(){
	var vSync;
    var store = new DevExpress.data.CustomStore({
	    load: function() {
            
        },		
        key: "Id"
    });	
	
	var ws = new sgcws_dataset("ws://127.0.0.1:5413");
	ws.on('open', function(evt){
		ws.subscribe_all();
		
        $("#gridContainer").dxDataGrid({
            dataSource: store,
            showBorders: true,
            repaintChangesOnly: true,
            highlightChanges: true,
            columns: [
			{dataField: "Id"},
			{dataField: "Symbol"},
			{
                dataField: "Open",
                dataType: "number",
                format: "#0.####"
            },
			{
                dataField: "High",
                dataType: "number",
                format: "#0.####"
            },	
			{
                dataField: "Low",
                dataType: "number",
                format: "#0.####"
            },			
			{
                dataField: "Last",
                dataType: "number",
                format: "#0.####",
                cellTemplate: function (container, options) {
                    container.addClass((options.data.Change > 0) ? "inc" : "dec");
                    container.html(options.text);
                }
            },
			{
                dataField: "Change",
                dataType: "number",
                width: 140,
                format: "#0.####",
                cellTemplate: function (container, options) {
                    var fieldData = options.data;
                    container.addClass(fieldData.Change > 0 ? "inc" : "dec");

                    $("<span>")
                        .addClass("current-value")
                        .text(options.text)
                        .appendTo(container);
                    container.append(" ");

                    $("<span>")
                        .addClass("arrow")
                        .appendTo(container);
                }
            }]
        });	  
	});	

    ws.on('sgcbeforesynchronize', function(evt) {
		vSync = true;
	});
	
    ws.on('sgcaftersynchronize', function(evt) {
		vSync = false;
	});
	
    ws.on('sgcdataset', function(evt){ 
	  var id = evt.dataset["ID"];
	  var symbol = evt.dataset["NAME"];
	  var open = evt.dataset["OPEN"].replace(',', '.');
	  var high = evt.dataset["HIGH"].replace(',', '.');
	  var low = evt.dataset["LOW"].replace(',', '.');
	  var last = evt.dataset["LAST"].replace(',', '.');		
	  var change = evt.dataset["CHANGE"].replace(',', '.');		
		
	  var quote = JSON.parse("{\"Id\":" + id + ", \"Symbol\":\"" + symbol + "\", \"Open\": " + open + ", \"High\": " + high + ", \"Low\": " + low + ", \"Last\": " + last + ", \"Change\": " + change + "}");
	  if (vSync == true)
	  {
	    store.push([{ type: "insert", key: quote.Id, data: quote, index: -1 }]);
	  }
	  else
	  {
	    store.push([{ type: "update", key: quote.Id, data: quote}]);
	  }
	});
	
	ws.on('close', function(event){
	  
	});	


});
