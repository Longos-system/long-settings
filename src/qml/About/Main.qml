import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import LongUI 1.0 as LongUI
import Long.Settings 1.0
import "../"

ItemPage {
    id: control
    headerTitle: qsTr("About LongOS")

    About {
        id: about
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
                width: 463
                height: 230
                sourceSize: Qt.size(width, height)
                source: LongUI.Theme.darkMode ? "qrc:/images/dark/LongOS-500.png" : "qrc:/images/light/LongOS-500.png"
            }

            // Item {
            //     height: LongUI.Units.smallSpacing
            // }
            
            // Item {
            //     height: LongUI.Units.smallSpacing
            // }

            // Label {
            //     Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            //     // text: qsTr("SwiftOS")
            //     // FontGrade {
            //     //     id: bgagardad
            //     //     anchors.centerIn: parent
            //     // }
            //     visible: !about.isLongOS
            //     // font.pointSize: 22
            //     // color: "#3385FF"
            //     leftPadding: LongUI.Units.largeSpacing * 2
            //     rightPadding: LongUI.Units.largeSpacing * 2
            // }

            // Item {
            //     height: LongUI.Units.smallSpacing
            // }
            Item {
                height: LongUI.Units.smallSpacing
            }

            // Item {
            //     height: LongUI.Units.largeSpacing * 2
            // }

            RoundedItem {
                StandardItem {
                    key: qsTr("LongOS Version")
                    value: about.version
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("OpenLong Version")
                    value: about.openLongversion
                }
            }

                Item {
                height: LongUI.Units.smallSpacing
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("Debian Version")
                    
                    value: about.debianversion
                }
            }

                Item {
                height: LongUI.Units.smallSpacing
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("Desktop Version")
                    
                    value: about.desktopversion
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("UI Version")
                    value: about.uiversion
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("Update Time")
                    
                    value: about.updateversion
                }
            }

                Item {
                height: LongUI.Units.smallSpacing
            }

            RoundedItem {
                StandardItem {
                    key: qsTr("System Type")
                    value: about.architecture
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("Kernel Version")
                    
                    value: about.kernelVersion
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("Processor")
                    
                    value: about.cpuInfo
                }

                Rectangle {
                    // anchors.fill: parent
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("RAM")
                    
                    value: about.memorySize
                }

                Rectangle {
                    // anchors.fill: 
                    Layout.fillWidth: true
                    width: 20
                    height: 1
                    color: LongUI.Theme.settingsTextColor
                }

                StandardItem {
                    key: qsTr("Internal Storage")
                    value: about.internalStorage
                }
            }

            Item {
                height: LongUI.Units.smallSpacing
            }

            // Button {
            //     // text: qsTr("System Community")
            //     flat: true
            //     Layout.alignment: Qt.AlignHCenter
            //     // visible: control.error
            //     // onClicked: {
            //     //     Qt.openUrlExternally("https://bbs.swifts.org.cn")
            //     // }
            //     text: ""
            //     Layout.fillWidth: true
            //     // visible: about.isLongOS
            //     onClicked: moreInfoDialog.show()

            //     RowLayout {
            //         anchors.fill: parent
            //         anchors.leftMargin: LongUI.Units.largeSpacing * 1.5
            //         anchors.rightMargin: LongUI.Units.largeSpacing * 1.5

            //         Label {
            //             text: qsTr("Agreement")
            //             font.family: "Ubuntu Light"
            //         }

            //         Item {
            //             Layout.fillWidth: true
            //         }

            //         Label {
            //             text: qsTr("View→")
            //         }
            //     }
            // }

            StandardButton {
                Layout.fillWidth: true
                text: ""
                // onClicked: timeZoneDialog.visibility = "Maximized"
                onClicked: infoDialog.show()

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: LongUI.Units.largeSpacing * 1.5
                    anchors.rightMargin: LongUI.Units.largeSpacing * 1.5

                    Label {
                        text: qsTr("more Info")
                    }

                    Item {
                        Layout.fillWidth: true
                    }

                    Label {
                        text: qsTr("→")
                    }
                }
            }

            LongUI.InfoDialog {
                id: infoDialog
                name: qsTr("Long OS")
                version: about.version
                description: qsTr("Built on Debian 12")
                ver1: qsTr("OpenLong Server 1.0.2")
                ver2: about.buildversion
                ver3: qsTr("Pro_Beta")
                kernel: about.kernelVersion
                buildtime: about.buildtime
                iconSource: "qrc:/images/dark/LongOS-64.png"
                // RowLayout {
                //     spacing: LongUI.Units.largeSpacing
                //     Item {
                //         Layout.fillWidth: true
                //     }
                // }
            }

            Item {
                height: LongUI.Units.smallSpacing
            }
        }
    }
}