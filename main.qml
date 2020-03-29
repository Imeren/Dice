import QtQuick 2.12
import QtQuick.Window 2.12
import Randomizer 1.0

Window
{
    visible: true
    width: 360
    height: 480
    //фиксация размеров окна
    maximumWidth: width
    maximumHeight: height
    minimumWidth: width
    minimumHeight: height
    title: qsTr("Dice")

    Randomizer
    {
        id: rand
    }
    //добавление формы
    ThemeForm
    {
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                rand.generate();
                //изменение свойства изображения sourse в зависимости от сгенерированного числа в пределах от 1 до 6
                if (rand.number == 1)
                {
                    parent.photo.source = "1.png";
                }
                if (rand.number == 2)
                {
                    parent.photo.source = "2.png";
                }
                if (rand.number == 3)
                {
                    parent.photo.source = "3.png";
                }
                if (rand.number == 4)
                {
                    parent.photo.source = "4.png";
                }
                if (rand.number == 5)
                {
                    parent.photo.source = "5.png";
                }
                if (rand.number == 6)
                {
                    parent.photo.source = "6.png";
                }
            }
        }
    }
}
