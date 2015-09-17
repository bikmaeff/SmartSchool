#include "usersdialog.h"
#include "ui_usersdialog.h"
#include <QSqlTableModel>
#include"newuserdialog.h"

usersDialog::usersDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::usersDialog)
{
    ui->setupUi(this);

    usersModel = new QSqlTableModel();
    usersModel->setTable("users");
    usersModel->setEditStrategy(QSqlTableModel::OnManualSubmit);
    usersModel->setHeaderData(0, Qt::Horizontal, tr("ID"));
    usersModel->setHeaderData(1, Qt::Horizontal, tr("User Name"));
    usersModel->setHeaderData(2, Qt::Horizontal, tr("Password"));
    usersModel->select();
    ui->tblUsers->setModel(usersModel);

    ui->tblUsers->resizeColumnsToContents();
}

usersDialog::~usersDialog()
{
    delete ui;
}

void usersDialog::on_btnNewUser_clicked()
{
    newUserDialog dlg;
    if (dlg.exec()){
        usersModel->select();
    }
}
