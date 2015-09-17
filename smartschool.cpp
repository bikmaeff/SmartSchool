#include "smartschool.h"
#include "ui_smartschool.h"
#include "usersdialog.h"

SmartSchool::SmartSchool(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::SmartSchool)
{
      ui->setupUi(this);
}

SmartSchool::~SmartSchool()
{
    delete ui;
}

void SmartSchool::showUsersTable(){
    usersDialog users;
    users.exec();
}
