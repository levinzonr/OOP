accessing
launch
	|space game grid |
	
  space := BlSpace new.
  space extent: 420@420.
  game := MgdGameModel numbers.
  grid := MgdGameElement new.
  grid gameModel:  game.
  space root addChild: grid.
  space show