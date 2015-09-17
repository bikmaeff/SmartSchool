#ifndef NEWUSERDIALOG_H
#define NEWUSERDIALOG_H

#include <QDialog>

namespace Ui {
class newUserDialog;
}

class newUserDialog : public QDialog
{
    Q_OBJECT

public:
    explicit newUserDialog(QWidget *parent = 0);
    ~newUserDialog();

private slots:
    void on_btnCancel_clicked();

    void on_btnSave_clicked();

private:
    Ui::newUserDialog *ui;
};

#endif // NEWUSERDIALOG_H
