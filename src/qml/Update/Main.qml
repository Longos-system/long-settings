import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtMultimedia 5.0
import LongUI 1.0 as LongUI
import Long.Settings 1.0
import "../"

ItemPage {
    headerTitle: qsTr("Update")

    About {
        id: update
    }

    Rectangle {
    width: 640
    height: 480

    Video {
        id: video
        source: "qrc:/images/video.mp4"
        autoPlay: true
        fillMode: VideoOutput.Stretch
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        focus: false
        visible: false
    }

    Component.onCompleted: {
        video.visible = true
    }
}

    Scrollable {
        anchors.fill: parent
        contentHeight: layout.implicitHeight

        ColumnLayout {
            id: layout
            anchors.fill: parent

            // Item {
            //     height: LongUI.Units.largeSpacing
            // }

            Image {
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                width: 450
                height: 137
                sourceSize: Qt.size(width, height)
                source: LongUI.Theme.darkMode ? "qrc:/images/dark/logo.png" : "qrc:/images/light/logo.png"
            }

            // Item {
            //     height: LongUI.Units.smallSpacing
            // }
            
            // Item {
            //     height: LongUI.Units.smallSpacing
            // }

            Label {
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                // text: qsTr("SwiftOS")
                // FontGrade {
                //     id: bgagardad
                //     anchors.centerIn: parent
                // }
                visible: !about.isLongOS
                // font.pointSize: 22
                // color: "#3385FF"
                leftPadding: LongUI.Units.largeSpacing * 2
                rightPadding: LongUI.Units.largeSpacing * 2
            }

            Item {
                height: LongUI.Units.smallSpacing
            }

            Item {
                height: LongUI.Units.largeSpacing * 2
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("OS Version")
                    
                    value: about.version
                }

                // StandardItem {
                //     key: qsTr("openlong Version")
                //     value: about.openLongversion
                // }

                StandardItem {
                    key: qsTr("Debian Version")
                    
                    value: about.debianversion
                }

                StandardItem {
                    key: qsTr("System Type")
                    
                    value: about.architecture
                }

                StandardItem {
                    key: qsTr("Kernel Version")
                    
                    value: about.kernelVersion
                }

                StandardItem {
                    key: qsTr("Processor")
                    
                    value: about.cpuInfo
                }

                StandardItem {
                    key: qsTr("RAM")
                    
                    value: about.memorySize
                }

                StandardItem {
                    key: qsTr("Internal Storage")
                    
                    value: about.internalStorage
                }
            }

            Item {
                height: LongUI.Units.smallSpacing
            }

            StandardButton {
                text: ""
                Layout.fillWidth: true
                // visible: about.isLongOS
                onClicked: {
                    process.startDetached("long-settings", ["-m", "bluetooth"])
                }

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: LongUI.Units.largeSpacing * 1.5
                    anchors.rightMargin: LongUI.Units.largeSpacing * 1.5

                    Label {
                        text: qsTr("Agreement")
                        font.family: "Ubuntu Light"
                    }

                    Item {
                        Layout.fillWidth: true
                    }

                    Label {
                        text: qsTr("View→")
                    }
                }
            }

            Item {
                height: LongUI.Units.smallSpacing
            }
        }
    }
}
