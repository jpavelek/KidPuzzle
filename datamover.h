#ifndef DATAMOVER_H
#define DATAMOVER_H

#include <QObject>
#include <QtDeclarative>
#include <QSettings>


class DataMover : public QObject
{
    Q_OBJECT
public:
    explicit DataMover(QObject *parent = 0);

signals:

public slots:
    bool wasReviewed(void);
    void setReviewed(void);
private:
    QSettings *settings;
};

#endif // DATAMOVER_H
