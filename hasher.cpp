#include<QString>
#include<QByteArray>
#include<QCryptographicHash>

static QByteArray hashePassword(QString password){
    QByteArray result = QCryptographicHash::hash(password.toUtf8(), QCryptographicHash::Sha1);
    return result.toHex();
}
