package com.storyexplation.util;

import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import javax.swing.ImageIcon;
import javax.swing.JMenu;
import javax.swing.JMenuItem;

public class SettingMenu {

	public JMenu setJMenu(JMenu menu) {
		menu.setFont(new Font("Dialog", Font.BOLD, 12));
		menu.setCursor(new Cursor(Cursor.HAND_CURSOR));
		menu.setForeground(new Color(0, 0, 0));
		return menu;
	}// Create a Menu

	public JMenuItem setJMenuItem(JMenuItem mnuitem, String sCaption, String imgLocation) {
		mnuitem.setText(sCaption);
		mnuitem.setIcon(new ImageIcon(imgLocation));
		mnuitem.setCursor(new Cursor(Cursor.HAND_CURSOR));
		mnuitem.setFont(new Font("Dialog", Font.PLAIN, 12));
		mnuitem.setForeground(new Color(0, 0, 0));
		return mnuitem;
	}// Create a MenuItem

}