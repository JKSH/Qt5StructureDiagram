#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
	QGuiApplication app(argc, argv);

	// Use Qt Creator's default shadow building rules. Then,
	// the executable will load the .qml files from the source dir

	QQuickView v1(QUrl("../src/diagram_api.qml"));
	v1.setTitle("Qt 5 Structure");
	v1.show();

	QQuickView v2(QUrl("../src/diagram_legend.qml"));
	v2.setTitle("Legend");
	v2.show();

	return app.exec();
}
