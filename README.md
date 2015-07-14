# carto2

Attempt at converting the carto repo that uses TileMill over to Mapbox Studio (previously known as TileMill2).

## Main differences

1. All work will be done using Vagrant. This way data, paths, and configs will be consistent among everyone trying to update that map. This will include the code/versions for tools like osm2pgsql and Mapbox Studio so we don't have the "well it works on my computer" problem.
2. Mapbox Studio requires setting up each Moabi layers as both a source project and a style project. For existing layers this will all be setup for you.

##Getting Started


