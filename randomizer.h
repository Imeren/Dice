#ifndef RANDOMIZER_H
#define RANDOMIZER_H

#include <QObject>

class randomizer : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int number READ number WRITE setNumber NOTIFY numberChanged)

public:
    explicit randomizer(QObject *parent = nullptr);
    int number() const;

signals:
    void numberChanged(int number);

public slots:
    void setNumber(int number);
    void generate();

private:
    int m_number = 0;
};

#endif // RANDOMIZER_H
