#include "smartschool.h"
#include "ui_smartschool.h"
#include "usersdialog.h"
#include <QDebug>

SmartSchool::SmartSchool(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::SmartSchool)
{
      ui->setupUi(this);

}

SmartSchool::~SmartSchool()
{
    delete ui;
    delete generalModel;
}

void SmartSchool::on_actionChildren_triggered()
{
    if (generalModel) {
        delete generalModel;
    }
    generalModel = new QSqlTableModel();

    generalModel->setTable("children");

    ui->lstGeneral->setModel(generalModel);
    ui->lstGeneral->setModelColumn(1);
    generalModel->select();
}

void SmartSchool::on_actionUsers_triggered()
{
    usersDialog users;
    users.exec();
}
