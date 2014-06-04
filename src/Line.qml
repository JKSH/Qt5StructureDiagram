import QtQuick 2.2

Rectangle {
	id: root
	color: "black"
	height: 1
	width: length(x1,y1,x2,y2)
	rotation: slope(x1,y1,x2,y2)
	transformOrigin: Item.Left

	property alias x1: root.x
	property alias y1: root.y
	property real  x2: root.x
	property real  y2: root.y

	function length(sx1,sy1,sx2,sy2)
	{
		var rise = sy2-sy1
		var run  = sx2-sx1
		return Math.sqrt( rise*rise + run*run )
	}

	function slope(sx1,sy1,sx2,sy2)
	{
		var rise = sy2-sy1
		var run  = sx2-sx1
		if (run === 0)
		{
			if (rise > 0)
				return 90
			else
				return -90
		}

		var angle = Math.atan(rise/run)*180/Math.PI
		if (run > 0)
			return angle
		else
			return angle+180
	}
}
