import mapboxgl from "mapbox-gl";
import "mapbox-gl/dist/mapbox-gl.css";

const initMapbox = () => {
  const mapElement = document.getElementById("map");

  if (mapElement) {
    // only build a map if there's a div#map to inject into

    console.log("does this work");
    mapboxgl.accessToken =
      "pk.eyJ1IjoiYXdlc29tZTUiLCJhIjoiY2txcnZrdzlvMGJzbDJvbXRneGR3Yng4biJ9.NrKRnd6T6PDSgAoIt6VZeA";
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v10",
    });
  }
};

export { initMapbox };
