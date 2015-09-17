#include "smartschool.h"
#include "logindialog.h"
#include <QApplication>
#include <QMessageBox>
#include <QSqlDatabase>
#include <QDebug>
#include "hasher.cpp"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    //Open database connection
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");
    db.setHostName("127.0.0.1");
    db.setUserName("smart");
    db.setPassword("smartpass");
    db.setDatabaseName("school");
    if (db.open()){
        qDebug() << "Database Opened";
        //open login dialog
        loginDialog login;
        if (login.exec()){
            SmartSchool win;
            win.showMaximized();
            return app.exec();
        } else {
            qDebug("Login Cancelled");
            db.close();
            app.exit();
        }
    } else {
        qDebug("Couldn't open Database");
        app.exit();
    }

}
