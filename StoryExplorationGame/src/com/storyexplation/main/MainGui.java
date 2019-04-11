package com.storyexplation.main;

import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

import com.storyexplation.view.MainDashboard;

public class MainGui {

	public static void main(String[] arg) {
		try {
			UIManager.setLookAndFeel("com.jtattoo.plaf.luna.LunaLookAndFeel");
			MainDashboard.createAndShowGUI();
		
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException
				| UnsupportedLookAndFeelException e) {
			e.printStackTrace();
		}
	}
}
