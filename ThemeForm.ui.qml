import QtQuick 2.4

Item {
    width: 360
    height: 480
    visible: true
    property alias photo: photo //свойство для изображения
    Image {
        id: photo
        width: 170
        height: 170
        source: "theme.png"
        anchors.centerIn: parent
    }
    Text {
        text: qsTr("Нажмите, чтобы бросить кубик...")
        font.pointSize: 15
        anchors.bottom: parent.bottom
    }
}
