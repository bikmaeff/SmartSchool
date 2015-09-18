#ifndef USERSDIALOG_H
#define USERSDIALOG_H

#include <QDialog>
#include <QSqlTableModel>

namespace Ui {
class usersDialog;
}

class usersDialog : public QDialog
{
    Q_OBJECT

public:
    explicit usersDialog(QWidget *parent = 0);
    ~usersDialog();

private slots:
    void on_btnNewUser_clicked();

    void on_btnDeleteUser_clicked();

private:
    Ui::usersDialog *ui;
    QSqlTableModel *usersModel;
};

#endif // USERSDIALOG_H
