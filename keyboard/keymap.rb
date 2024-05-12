kbd = Keyboard.new

kbd.init_direct_pins(
  [ 
    3, 4, 5, 
    0, 1, 2 
  ]
)

kbd.add_layer :default, %i(
  KC_F13 KC_F14 FUNCTIONS2 
  KC_F16 KC_F17 KC_F18
)

kbd.start!