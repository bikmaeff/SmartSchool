#include "usersdialog.h"
#include "ui_usersdialog.h"
#include <QSqlTableModel>
#include <QMessageBox>
#include"newuserdialog.h"

usersDialog::usersDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::usersDialog)
{
    ui->setupUi(this);

    usersModel = new QSqlTableModel();
    usersModel->setTable("users");
    //usersModel->setEditStrategy(QSqlTableModel::OnManualSubmit);
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
    delete usersModel;
}

void usersDialog::on_btnNewUser_clicked()
{
    newUserDialog dlg;
    if (dlg.exec()){
        usersModel->select();
    }
}

void usersDialog::on_btnDeleteUser_clicked()
{
    QMessageBox msg;
    msg.setText("Are you sure you want to delete this user ?");
    msg.setStandardButtons(QMessageBox::Yes | QMessageBox::No);
    msg.setDefaultButton(QMessageBox::No);
    msg.setIcon(QMessageBox::Warning);

    if (msg.exec() == QMessageBox::Yes) {
        usersModel->removeRow(ui->tblUsers->currentIndex().row());
        usersModel->select();
    }
}
