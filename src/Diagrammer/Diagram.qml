import QtQuick 2.2
import "private/StyleSheet.js" as Style

/// Expected children: RepoGroup
Rectangle {
	width: childrenRect.width
	height: childrenRect.height

	Component.onCompleted: {
		var cumulativeWidth = 0
		for (var i = 0; i < children.length; ++i)
		{
			children[i].x = cumulativeWidth
			cumulativeWidth += children[i].width + Style.repoGroup.hGap
		}
	}
}
