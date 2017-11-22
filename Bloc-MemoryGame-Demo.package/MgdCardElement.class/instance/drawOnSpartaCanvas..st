visual properties
drawOnSpartaCanvas: aCanvas
	|roundedRectangle|
	roundedRectangle := aCanvas shape
		roundedRectangle: self boundsInLocal
		radii: (BlCornerRadii  radius: self cornerRadius ).
		
		aCanvas clip
			by: roundedRectangle
			during: 
			[
				aCanvas fill
					paint: self backgroundPaint; 
					path: self boundsInLocal;
					draw.
			  ].
		
		self card isFlipped
			ifTrue: [ self  drawFlippedSideOn:  aCanvas  ]
			ifFalse: [ self drawBackSideOn:   aCanvas  ]
		