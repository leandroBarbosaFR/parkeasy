import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

const MARKERS = [
  {
    lat: 48.856614,
    lng: 2.3522219
  },

  {
    lat: 44.837789,
    lng: -0.57918
  },

  {
    lat: 43.296482,
    lng: 5.36978
  }
]

export default class extends Controller {
  static values = {
    apiKey: String,
  }

  connect() {
    console.log('Its work')
    mapboxgl.accessToken = this.apiKeyValue

    this.mapsCities = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/light-v10"
    })

    this.#addMarkersToMap(),
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {

    MARKERS.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.mapsCities)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    MARKERS.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.mapsCities.fitBounds(bounds, { padding: 50, maxZoom: 14,duration: 10})
  }
}
