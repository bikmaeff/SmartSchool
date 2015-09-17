#ifndef SMARTSCHOOL_H
#define SMARTSCHOOL_H

#include <QMainWindow>

namespace Ui {
class SmartSchool;
}

class SmartSchool : public QMainWindow
{
    Q_OBJECT

public:
    explicit SmartSchool(QWidget *parent = 0);
    ~SmartSchool();
private slots:
    void showUsersTable();
private:
    Ui::SmartSchool *ui;
};

#endif // SMARTSCHOOL_H
