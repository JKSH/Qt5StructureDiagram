import QtQuick 2.2
import "StyleSheet.js" as Style

/// Expected children: QtModule
Rectangle {
	id: root
	width: childrenRect.width
	height: childrenRect.height

	property string name
	property string api

	Rectangle {
		id: label
		color: "darkgreen"
		width: Style.repo.labelWidth
		height: parent.height

		Text {
			id: labelText
			anchors.centerIn: parent
			color: root.color
			text: root.name
		}
	}

	Component.onCompleted: {
		var cumulativeHeight = 0
		for (var i = 1; i < children.length; ++i)
		{
			children[i].x = label.width + Style.repo.hPadding
			children[i].y = cumulativeHeight
			cumulativeHeight += children[i].height + Style.qtModule.vGap
		}
	}
}
