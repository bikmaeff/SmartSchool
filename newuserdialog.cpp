#include "newuserdialog.h"
#include "ui_newuserdialog.h"
#include "hasher.cpp"
#include<QSqlQuery>
#include<QDebug>

newUserDialog::newUserDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::newUserDialog)
{
    ui->setupUi(this);
    ui->lblError->hide();
}

newUserDialog::~newUserDialog()
{
    delete ui;
}

void newUserDialog::on_btnCancel_clicked()
{
    this->reject();
}

void newUserDialog::on_btnSave_clicked()
{
    if (ui->edtPassword->text() == ui->edtRePassword->text()){
        QSqlQuery qry;
        qry.prepare("INSERT INTO users (username, password) VALUES (?,?)");
        qry.addBindValue(ui->edtUsername->text());
        QString hashed_pass = hashePassword(ui->edtPassword->text());
        qry.addBindValue(hashed_pass);
        if(qry.exec()){
            this->accept();
        }

    } else{
        ui->lblError->setText("Password Doesn't match");
        ui->lblError->show();
    }
}
