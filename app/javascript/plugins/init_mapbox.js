import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElements = document.querySelectorAll('.build-map');

const buildMap = (mapElement) => {
  console.log(mapElement);
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: mapElement.id,
    style: 'mapbox://styles/mapbox/streets-v9'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 100, maxZoom: 14, duration: 2000});
};

const initMapbox = () => {
  if (mapElements) {
    mapElements.forEach((mapElement) => {
      const map = buildMap(mapElement);
      const markers = JSON.parse(mapElement.dataset.markers);
      addMarkersToMap(map, markers);
      fitMapToMarkers(map, markers);
    });
  };
};

export { initMapbox };
