#-------------------------------------------------
#
# Project created by QtCreator 2015-09-15T23:12:52
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = SmartSchool
TEMPLATE = app


SOURCES += main.cpp\
        smartschool.cpp \
    logindialog.cpp \
    usersdialog.cpp \
    hasher.cpp \
    newuserdialog.cpp

HEADERS  += smartschool.h \
    logindialog.h \
    usersdialog.h \
    newuserdialog.h

FORMS    += smartschool.ui \
    logindialog.ui \
    usersdialog.ui \
    newuserdialog.ui

RESOURCES += \
    icons.qrc

OTHER_FILES +=
