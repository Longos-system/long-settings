import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import LongUI 1.0 as LongUI
import Long.Settings 1.0
import "../"

ItemPage {
    headerTitle: qsTr("more Info")

    Agreement {
        id: info
        visible: false
    }

    Scrollable {
        anchors.fill: parent
        contentHeight: layout.implicitHeight

        ColumnLayout {
            id: layout
            anchors.fill: parent

            Item {
                height: LongUI.Units.largeSpacing
            }

            Image {
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                width: 450
                height: 137
                sourceSize: Qt.size(width, height)
                source: LongUI.Theme.darkMode ? "qrc:/images/dark/logo.png" : "qrc:/images/light/logo.png"
            }

            Item {
                height: LongUI.Units.smallSpacing
            }
            
            Item {
                height: LongUI.Units.smallSpacing
            }

            Label {
                Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
                // text: qsTr("SwiftOS")
                FontGrade {
                    id: bgagardad
                    anchors.centerIn: parent
                }
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
                    key: qsTr("System Version")
                    
                    value: about.version
                }

                StandardItem {
                    key: qsTr("Software Version")
                    
                    value: about.openLongversion
                }

                StandardItem {
                    key: qsTr("openLong core Version")
                    
                    value: about.debianversion
                    MouseArea {
                        onDoubleClicked: {
                            about.openUpdator()
                        }
                    }
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

            StackView {
                id: _stackView
                anchors.fill: parent
                initialItem: about
            }

            StandardButton {
                text: ""
                Layout.fillWidth: true
                // visible: about.isLongOS
                onClicked: _stackView.push(agreement)

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
