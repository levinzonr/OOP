visual properties
drawBackSideOn: aCanvas
	aCanvas stroke
		paint: Color white;
		path: (aCanvas shape line: 0@0 to: self extent );
		draw.	
		
	aCanvas stroke
		paint: Color white;
		path: (aCanvas shape line: self width@0 to: 0@(self height ));
		draw.