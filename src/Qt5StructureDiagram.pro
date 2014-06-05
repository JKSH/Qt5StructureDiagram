TEMPLATE = app

QT += qml quick

SOURCES += main.cpp

OTHER_FILES += \
	Diagrammer/private/StyleSheet.js \
	Diagrammer/private/Line.qml \
	Diagrammer/private/QtModuleElement.qml \
	Diagrammer/Diagram.qml \
	Diagrammer/RepoGroup.qml \
	Diagrammer/Repo.qml \
	Diagrammer/QtModule.qml \
	Diagrammer/CppNamespace.qml \
	Diagrammer/QmlModule.qml \
	diagram_api.qml \
	diagram_legend.qml
