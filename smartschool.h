#ifndef SMARTSCHOOL_H
#define SMARTSCHOOL_H

#include <QMainWindow>
#include <QSqlTableModel>
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
    void on_actionChildren_triggered();
    void on_actionUsers_triggered();

private:
    Ui::SmartSchool *ui;
    QSqlTableModel *generalModel = NULL;

};

#endif // SMARTSCHOOL_H
