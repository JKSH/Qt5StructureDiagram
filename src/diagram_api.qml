Diagram {
	RepoGroup {
		Repo {
			name: "qtactiveqt.git"

			QtModule {
				name: "QAxContainer"
				api: "CppOnly"
			}
			QtModule {
				name: "QAxServer"
				api: "CppOnly"
			}
		}
		Repo {
			name: "qtbase.git"

			QtModule {
				name: "Qt Concurrent"
				api: "CppOnly"

				CppNamespace {name: "QtConcurrent"}
			}
			QtModule {
				name: "Qt Core"
				api: "CppOnly"
				status: "essential"

				CppNamespace {name: "Qt"}
			}
			QtModule {
				name: "Qt D-Bus"
				api: "CppOnly"

				CppNamespace {name: "QDBus"}
			}

			QtModule {
				name: "Qt GUI"
				api: "CppOnly"
				status: "essential"
			}
			QtModule {
				name: "Qt Network"
				api: "CppOnly"
				status: "essential"

				CppNamespace {name: "QSsl"}
			}
			QtModule {
				name: "Qt OpenGL"
				api: "CppOnly"
				status: "deprecated"

				CppNamespace {name: "QGL"}
			}
			QtModule {
				name: "Qt Print Support"
				api: "CppOnly"
			}
			QtModule {
				name: "Qt SQL"
				api: "CppOnly"
				status: "essential"

				CppNamespace {name: "QSql"}
			}
			QtModule {
				name: "Qt Test"
				api: "CppOnly"
				status: "essential"

				CppNamespace {name: "QTest"}
			}
			QtModule {
				name: "Qt Widgets"
				api: "CppOnly"
				status: "essential"
			}
			QtModule {
				name: "Qt XML"
				api: "CppOnly"
			}
		}
		Repo {
			name: "qtxmlpatterns.git"

			QtModule {
				name: "Qt XML Patterns"
				api: "CppOnly"
			}
		}
		Repo {
			name: "qtconnectivity.git"

			QtModule {
				name: "Qt Bluetooth"
				api: "CppAndQml"

				CppNamespace {name: "QBluetooth"}
				QmlModule {name: "QtBluetooth"}
			}
			QtModule {
				name: "Qt NFC"
				api: "CppAndQml"

				QmlModule {name: "QtNfc"}
			}
		}
		Repo {
			name: "qtenginio.git"

			QtModule {
				name: "Enginio"
				api: "CppAndQml"

				CppNamespace {name: "Enginio"}
				QmlModule {name: "Enginio"}
			}
		}
		Repo {
			name: "qtgraphicaleffects.git"

			QtModule {
				name: "Qt Graphical Effects"
				api: "QmlOnly"

				QmlModule {name: "QtGraphicalEffects"}
			}
		}
		Repo {
			name: "qtlocation.git"

			QtModule {
				name: "Qt Positioning"
				api: "CppAndQml"

				QmlModule {name: "QtPositioning"}
			}
		}
	}
	RepoGroup {
		Repo {
			name: "qtmultimedia.git"

			QtModule {
				name: "Qt Multimedia"
				api: "CppAndQml"
				status: "essential"

				CppNamespace {name: "QAudio"}
				CppNamespace {name: "QMediaMetaData"}
				CppNamespace {name: "QMultimedia"}

				QmlModule {name: "QtAudioEngine"}
				QmlModule {name: "QtMultimedia"}
			}

			QtModule {
				name: "Qt Multimedia Widgets"
				api: "CppOnly"
				status: "essential"
			}
		}
		Repo {
			name: "qtscript.git"

			QtModule {
				name: "Qt Script"
				api: "CppOnly"
				status: "deprecated"
			}
			QtModule {
				name: "Qt Script Tools"
				api: "CppOnly"
				status: "deprecated"
			}
		}
		Repo {
			name: "qtsensors.git"

			QtModule {
				name: "Qt Sensors"
				api: "CppAndQml"

				QmlModule {name: "QtSensors"}
			}
		}
		Repo {
			name: "qtserialport.git"

			QtModule {
				name: "Qt SerialPort"
				api: "CppOnly"
			}
		}
		Repo {
			name: "qtsvg.git"

			QtModule {
				name: "Qt SVG"
				api: "CppOnly"
			}
		}
		Repo {
			name: "qtwebkit.git"

			QtModule {
				name: "Qt WebKit"
				api: "QmlOnly"
				status: "essential"

				QmlModule {name: "QtWebKit"}
			}
			QtModule {
				name: "Qt WebKit Widgets"
				api: "CppOnly"
				status: "essential"
			}
		}
		Repo {
			name: "qtwebsockets.git"

			QtModule {
				name: "Qt WebSockets"
				api: "CppAndQml"

				CppNamespace {name: "QWebSocketProtocol"}
				QmlModule {name: "Qt"; isPlaceholder: true}
				QmlModule {name: "Qt.WebSockets"; nestLevel: 1}
			}
		}
		Repo {
			name: "qtandroidextras.git"

			QtModule {
				name: "Qt Android Extras"
				api: "CppOnly"

				CppNamespace {name: "QtAndroid"}
			}
		}
		Repo {
			name: "qtmacextras.git"

			QtModule {
				name: "Qt Mac Extras"
				api: "CppOnly"

				CppNamespace {name: "QtMac"}
			}
		}
		Repo {
			name: "qtwinextras.git"

			QtModule {
				name: "Qt Windows Extras"
				api: "CppAndQml"

				CppNamespace {name: "QtWin"}
				QmlModule {name: "QtWinExtras"}
			}
		}
		Repo {
			name: "qtx11extras.git"

			QtModule {
				name: "Qt X11 Extras"
				api: "CppOnly"
			}
		}
	}
	RepoGroup {
		Repo {
			name: "qtdeclarative.git"

			QtModule {
				name: "Qt Labs"
				isPlaceholder: true

				QmlModule {name: "Qt"; isPlaceholder: true}
				QmlModule {name: "Qt.labs"; isPlaceholder: true; nestLevel: 1}
				QmlModule {name: "Qt.labs.folderlistmodel"; nestLevel: 2}
				QmlModule {name: "Qt.labs.settings"; nestLevel: 2}
			}
			QtModule {
				name: "Qt QML"
				api: "CppAndQml"
				status: "essential"

				QmlModule {name: "QtQml"}
				QmlModule {name: "QtQml.Models"; nestLevel: 1}
			}
			QtModule {
				name: "Qt Quick Test"
				api: "QmlOnly"

				QmlModule {name: "QtTest"}
			}
			QtModule {
				name: "Qt Quick Widgets"
				api: "CppOnly"
			}
			QtModule {
				name: "Qt Quick"
				api: "CppAndQml"
				status: "essential"

				QmlModule {name: "QtQuick"}
				QmlModule {name: "QtQuick.LocalStorage"; nestLevel: 1}
				QmlModule {name: "QtQuick.Window"; nestLevel: 1}
				QmlModule {name: "QtQuick.XmlListModel"; nestLevel: 1}
			}
			QtModule {
				name: "Qt Quick Particles"
				api: "QmlOnly"

				QmlModule {name: "QtQuick.Particles"; nestLevel: 1}
			}
		}
		Repo {
			name: "qtquickcontrols.git"

			QtModule {
				name: "Qt Quick Controls"
				api: "QmlOnly"
				status: "essential"

				QmlModule {name: "QtQuick.Controls"; nestLevel: 1}
				QmlModule {name: "QtQuick.Controls.Styles"; nestLevel: 2}
			}
			QtModule {
				name: "Qt Quick Dialogs"
				api: "QmlOnly"
				status: "essential"

				QmlModule {name: "QtQuick.Dialogs"; nestLevel: 1}
			}
			QtModule {
				name: "Qt Quick Layouts"
				api: "QmlOnly"
				status: "essential"

				QmlModule {name: "QtQuick.Layouts"; nestLevel: 1}
			}
		}
		Repo {
			name: "qtquick1.git"

			QtModule {
				name: "Qt Declarative"
				api: "CppAndQml"
				status: "deprecated"

				QmlModule {name: "QtQuick"}
			}
		}
	}
}
