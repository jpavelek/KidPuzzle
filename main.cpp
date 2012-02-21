#include <QtGui/QApplication>
#include <QtDeclarative>
#include "qmlapplicationviewer.h"
#include "datamover.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);

    DataMover dmover;
    viewer.rootContext()->setContextProperty("settingsObj", &dmover);

    viewer.setMainQmlFile(QLatin1String("qml/KidPuzzle/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
