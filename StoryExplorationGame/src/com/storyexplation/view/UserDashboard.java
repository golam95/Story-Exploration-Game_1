package com.storyexplation.view;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import com.storyexplation.daoImp.UserInfoDaoImp;
import com.storyexplation.model.UserInfo;

public class UserDashboard extends JDialog {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JButton btn_ok;
	private JTextField txt_name;
	Font font = new Font("TimesRoman", Font.BOLD, 14);

	String select_type = null;
	String select_complete = null;
	UserInfoDaoImp infoimp = new UserInfoDaoImp();

	public UserDashboard(JFrame parent, String type, String complete) {
		super(JOptionPane.getFrameForComponent(parent), "User Details", true);
		select_type = type;
		select_complete = complete;
		this.createEnrollpanel();

	}

	public void createEnrollpanel() {
		try {
			this.setSize(400, 200);
			this.setLayout(null);
			this.setLocationRelativeTo(null);
			JLabel lbl_name = new JLabel("Enter Name");
			txt_name = new JTextField();
			btn_ok = new JButton("Ok");
			lbl_name.setBounds(30, 60, 180, 30);
			lbl_name.setFont(font);
			txt_name.setBounds(130, 60, 210, 30);
			btn_ok.setBounds(130, 110, 100, 30);
			btn_ok.setForeground(Color.white);
			btn_ok.setBackground(Color.decode("#B2937B"));
			btn_ok.setFont(font);

			btn_ok.addActionListener(new ActionListener() {
				@Override
				public void actionPerformed(ActionEvent arg0) {
					String name = txt_name.getText().toString();
					if (name.equals("")) {
						JOptionPane.showMessageDialog(null, "Field Must Not Empty!!!");
					} else {
						try {
							if (infoimp.check_playerName(name) == true) {
								JOptionPane.showMessageDialog(null, "Sorry the Name is Already Exit.");
								txt_name.setText("");
							} else {
								infoimp.add_playerInfo(new UserInfo(0, name, select_complete, select_type));
								txt_name.setText("");
								visablefalse();
							}
						} catch (SQLException e1) {
							e1.printStackTrace();
						}

					}
				}

			});
			this.add(lbl_name);
			this.add(txt_name);
			this.add(btn_ok);
			this.getContentPane().setBackground(Color.decode("#34B14C"));
			this.setVisible(true);
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, "Error Occure Enrollpane" + ex.toString());

		}
	}

	public void visablefalse() {
		this.setVisible(false);
	}
}