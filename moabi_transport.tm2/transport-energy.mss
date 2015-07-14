@road_casing: darken(@d_orange, 15);
@road_fill: @l_yellow;

#data {
  line-width: 1;
  line-opacity: 0.4;
  ::casing {
    line-cap: round;
    line-join: round;
    line-simplify: 1.0;
    line-color: @road_casing;
    [zoom = 5] { line-width: 0; line-opacity: 0.7; }
    [zoom = 6] { line-width: 2.1; line-opacity: 0.7; }
    [zoom = 7] { line-width: 2.4; line-opacity: 0.7; }
    [zoom = 8] { line-width: 2.7; line-opacity: 0.7; }
    [zoom = 9] { line-width: 3.0; line-opacity: 0.7; line-gamma: 0.75; }
    [zoom = 10] { line-width: 5; line-opacity: 0.8; line-gamma: 0.75; }
    [zoom >= 11] { line-width: 6; line-opacity: 0.8; line-gamma: 0.75; }
  }
  ::fill {
    line-cap: round;
    line-join: round;
    line-simplify: 1.0;
    line-color: @road_fill;
    line-opacity: 1;
    [zoom = 5] { line-width: 0.7; line-color: darken(@road_fill, 20); line-gamma: 0.75; }
    [zoom = 6] { line-width: 1.1; line-gamma: 0.75; }
    [zoom = 7] { line-width: 1.4; line-gamma: 0.75; }
    [zoom = 8] { line-width: 1.7; line-gamma: 0.75; }
    [zoom = 9] { line-width: 2.5; line-gamma: 0.75; }
    [zoom = 10] { line-width: 4.0; line-gamma: 0.75; }
    [zoom >= 11] { line-width: 5.0; line-gamma: 0.75; }
  }
}

#data::label[zoom >= 6][name != ""]{
  shield-name: "[name]";
  shield-size: 9;
  shield-face-name: @sans_bold;
  shield-fill: @city_label;
  shield-file: url(../img/shield_primary/shield-primary-3.png);
  [zoom = 6]{ shield-min-distance: 50; }
  [zoom = 7]{ shield-min-distance: 55; }
  [zoom = 8]{ shield-min-distance: 60; }
  [zoom = 9]{ shield-min-distance: 70; }
  [zoom >= 10]{ shield-min-distance: 80; }
}