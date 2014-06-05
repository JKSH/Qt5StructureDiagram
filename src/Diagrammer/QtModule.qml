import QtQuick 2.2
import "private/StyleSheet.js" as Style

/// Expected children: CppNamespace and QmlModule
Rectangle {
	id: root
	width: childrenRect.width
	height: childrenRect.height

	property string name
	property string api: "none"
	property string status: "normal"
	property bool isPlaceholder: false

	Rectangle {
		id: moduleLabel
		radius: root.isPlaceholder ? Style.qtModuleElement.labelHeight/2 : 0
		width: Style.qtModule.labelWidth
		color: (root.isPlaceholder || root.status==="deprecated") ? "silver" : "mediumpurple"
		Text {
			id: labelText
			anchors.centerIn: parent
			font.italic: root.isPlaceholder
			color: "white"
			text: root.name
		}
		Rectangle {
			id: apiIndicator
			x: parent.width - width
			width: 5
			height: parent.height
			visible: root.api !== "none"
			gradient: Gradient {
				GradientStop {
					position: 0.0;
					color: root.api === "QmlOnly" ? "greenyellow" : "cyan"
				}
				GradientStop {
					position: 1.0;
					color: root.api === "CppOnly" ? "cyan" : "greenyellow"
				}
			}
		}
	}

	Component.onCompleted: {
		var cumulativeHeight = 0
		for (var i = 1; i < children.length; ++i) {
			children[i].x = moduleLabel.width
			children[i].y = cumulativeHeight
			cumulativeHeight += children[i].height + Style.qtModuleElement.vGap
		}
		cumulativeHeight -= Style.qtModuleElement.vGap
		moduleLabel.height = Math.max(Style.qtModuleElement.labelHeight, cumulativeHeight)
	}
}
