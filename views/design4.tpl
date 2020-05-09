<h4>Swell forcast for Mandal<h4>

<html>
    <head>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
        />
        <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"></script>
        <script src="https://api.windy.com/assets/map-forecast/libBoot.js"></script>
        <style>
            #windy {
                width: 100%;
                height: 1000px;
                

            }
        </style>
    </head>
    <body>
        <div id="windy"></div>
        <script>
        const options = {
    key: 'G0FaS1D9ktMG3R6fA0gOirPBG1fwZ2gR', // REPLACE WITH YOUR KEY !!! Generate your own key here: https://api.windy.com/map-forecast 
    
   // Choose the cordinates you wish to display on your map
    lat: 58.012,
    lon: 7.451,
    // choose the zoom of the map
    zoom: 500,
};
 // picker stuff can be moved into designe 5
windyInit(options, windyAPI => {
    const { picker, utils, broadcast, store } = windyAPI;
    
     var overlay = store.get('overlay')
  // 'wind' ... actually used overlay

  var allowedOverlays = store.getAllowed('overlay')
  // ['wind', 'rain', ... ] ... list of allowed values

  store.set('overlay','waves')
  // true ... Metric was changed to waves

    picker.on('pickerOpened', latLon => {
        // picker has been opened at latLon coords
        console.log(latLon);

        const { lat, lon, values, overlay } = picker.getParams();
        // picker at lat long and returns overlay values
        // When waves are selected it returns swell direction, size and period.
        console.log(lat, lon, values, overlay);

        
    });

    picker.on('pickerMoved', latLon => {
        // picker was dragged by user to latLon coords
        console.log(latLon);
    });

    picker.on('pickerClosed', () => {
        // picker was closed
    });

    // Wait since wather is rendered
    broadcast.once('redrawFinished', () => {
        picker.open({ lat: 58.012, lon: 7.451 });
        // Opening of a picker (async)
    });
});
        </script>
    </body>
</html>


