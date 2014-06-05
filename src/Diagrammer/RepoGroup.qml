import QtQuick 2.2
import "private/StyleSheet.js" as Style

/// Expected children: Repo
Rectangle {
	width: childrenRect.width
	height: childrenRect.height

	Component.onCompleted: {
		var cumulativeHeight = 0
		for (var i = 0; i < children.length; ++i)
		{
			children[i].y = cumulativeHeight
			cumulativeHeight += children[i].height + Style.repo.vGap
		}
	}
}
