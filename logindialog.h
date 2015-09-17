#ifndef LOGINDIALOG_H
#define LOGINDIALOG_H

#include <QDialog>

namespace Ui {
    class loginDialog;
}

class loginDialog : public QDialog
{
    Q_OBJECT

public:
    explicit loginDialog(QWidget *parent = 0);
    ~loginDialog();

private slots:
    void showErrorMessage(QString msg);
    void on_btnCancel_clicked();

    void on_btnLogin_clicked();

private:
    Ui::loginDialog *ui;

};

#endif // LOGINDIALOG_H
