#include "datamover.h"

#define DM_REVIEWED_KEY "was_reviewed"

DataMover::DataMover(QObject *parent) :
    QObject(parent)
{
    settings = new QSettings("Afte9", "KidPuzzle");
}

void
DataMover::setReviewed() {
    settings->setValue(DM_REVIEWED_KEY, true);
}

bool
DataMover::wasReviewed() {
    return settings->value(DM_REVIEWED_KEY).toBool();
}
