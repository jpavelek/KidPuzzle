#include <QtGui/QApplication>
#include <QtDeclarative>
#include <QTranslator>
#include <QLocale>
#include "qmlapplicationviewer.h"
#include "datamover.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    QString locale = QString("KidPuzzle_") + QLocale::system().name() + QString(".qm");
    QTranslator translator;

    if (translator.load(locale, ":/translations")) {
        app->installTranslator(&translator);
    }

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);

    DataMover dmover;
    viewer.rootContext()->setContextProperty("settingsObj", &dmover);

    viewer.setMainQmlFile(QLatin1String("qml/KidPuzzle/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
