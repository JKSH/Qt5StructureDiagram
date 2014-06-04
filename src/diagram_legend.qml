Diagram {
	RepoGroup {
		Repo {
			name: "Git Repository"

			QtModule {
				name: "Qt Module(C++ API Only)"
				api: "CppOnly"

				CppNamespace {name: "C++ Namespace"}
			}
			QtModule {
				name: "Qt Module(QML API Only)"
				api: "QmlOnly"

				QmlModule {name: "QML Module"}
			}
			QtModule {
				name: "Qt Module(Both API)"
				api: "CppAndQml"

				QmlModule {name: "Placeholder"; isPlaceholder: true}
				QmlModule {name: "Nested QML Module"; nestLevel: 1}
			}
			QtModule {
				name: "Deprecated Qt Module"
				api: "CppAndQml"
				status: "deprecated"
			}
			QtModule {
				name: "Placeholder"
				isPlaceholder: true
			}
		}
	}
}
