import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

ShellRoot {
	id: root

	// theme colors
	property color colBg: "#212337"
	property color colGold: "#f1fc79"
	property color colRed: "#f16c75"
	property color colPurple: "#a48cf2"
	property color colPink: "#f265b5"
	property color colOrange: "#f7c67f"
	property color colGreen: "#37f499"
	property color colBlue: "#04d1f9"

	PanelWindow {
		anchors.left: true
		anchors.bottom: true
		anchors.top:true
		implicitWidth: 50
		Rectangle {
			anchors.fill: parent
			color: root.colBg
			ColumnLayout{
				anchors.fill: parent
				Rectangle{
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.top: parent.top
					GridLayout {
						id: item1
						anchors.horizontalCenter: parent.horizontalCenter
						anchors.top: parent.top
						columns: 3
						Repeater {
							model: 9
							Text {
								property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
								property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
								text: index + 1
								color: isActive ? "#f265b5" : (ws ? "#7aa2f7" : "#444b6a")
								font { pixelSize: 18; bold: true}
								MouseArea {
									anchors.fill: parent
									onClicked: Hyprland.dispatch("workspace " + (index + 1))
								}
							}
						}
						Item { Layout.fillWidth: true}
					}
					GridLayout {
						anchors.horizontalCenter: parent.horizontalCenter
						anchors.top: item1.bottom
						columns: 3

						Repeater {
							model: 9

							Text {
								property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
								property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
								text: index + 1
								color: isActive ? "#f265b5" : (ws ? "#7aa2f7" : "#444b6a")
								font { pixelSize: 16; bold: true}

								MouseArea {
									anchors.fill: parent
									onClicked: Hyprland.dispatch("workspace " + (index + 1))
								}
							}
						}
						Item { Layout.fillWidth: true}
					}
				}
			}
		}
	}
}
