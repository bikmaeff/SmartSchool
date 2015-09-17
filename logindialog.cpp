#include "logindialog.h"
#include "ui_logindialog.h"
#include "hasher.cpp"
#include <QSqlQuery>
#include <QDebug>

loginDialog::loginDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::loginDialog)
{
    ui->setupUi(this);
    ui->lblError->hide();
}

loginDialog::~loginDialog()
{
    delete ui;
}

void loginDialog::on_btnCancel_clicked()
{
    this->reject();
}

void loginDialog::on_btnLogin_clicked()
{
    QSqlQuery qry;
    qry.prepare("SELECT username, password FROM users WHERE username=?");
    qry.addBindValue(ui->edtUsername->text());
    qry.exec();

    if(qry.size() > 0){
        qry.first();
        QString password = qry.value(1).toString();

        if (hashePassword(ui->edtPassword->text()) == password) {
            qDebug() << "login success";
            this->accept();
        } else {
            this->showErrorMessage("Password doesnt match");
        }
    } else {
        showErrorMessage("Please re-check the username");
    }
}

void loginDialog::showErrorMessage(QString msg){
    ui->lblError->setText(msg);
    ui->lblError->show();
}
