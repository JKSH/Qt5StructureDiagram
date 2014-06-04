import QtQuick 2.2
import "StyleSheet.js" as Style

Item {
	id: root
	width: label.x + label.width // childrenRect.width
	height: childrenRect.height

	property string name
	property color color
	property bool isItalicized: false
	property real radius: 0
	property int nestLevel: 0

	Line {
		id: hLine
		x1: nestLevel === 0 ? 0 : (label.x - Style.qtModuleElement.indentation/2)
		y1: parent.height/2
		x2: label.x
		y2: y1
	}
	Line {
		id: vLine
		x1: hLine.x1
		y1: 0
		x2: x1
		y2: hLine.y2
		visible: nestLevel !== 0
	}
	Rectangle {
		id: label
		x: Style.qtModuleElement.hLineLength + nestLevel*Style.qtModuleElement.indentation
		width: Style.qtModuleElement.labelWidth
		height: Style.qtModuleElement.labelHeight
		radius: root.radius
		color: root.color
		Text {
			anchors.centerIn: parent
			text: root.name
			font.italic: root.isItalicized
		}
	}
}
