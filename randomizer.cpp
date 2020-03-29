#include "randomizer.h"
#include <QRandomGenerator>

randomizer::randomizer(QObject *parent) : QObject(parent)
{

}

int randomizer::number() const
{
    return m_number;
}

void randomizer::setNumber(int number)
{
    if (m_number == number)
        return;

    m_number = number;
    emit numberChanged(m_number);
}

void randomizer::generate()
{
    setNumber(QRandomGenerator::global()->bounded(1, 7));
}
