package com.storyexplation.view;

import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.swing.DefaultListModel;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import com.storyexplation.main.DBConnection;

public class ProgressDashborard extends JDialog implements MouseListener, ActionListener {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private JLabel txt_averageweight = new JLabel();
	JPanel pan_graph = new JPanel();

	Font font1 = new Font("Arial", Font.BOLD, 14);
	Font font2 = new Font("Arial", Font.BOLD, 12);
	private JList<String> lst_name = new JList<String>();
	private JScrollPane scroll_panel = new JScrollPane();

	JLabel lbl_type = new JLabel("Type");
	JLabel lbl_complete = new JLabel("Complete");
	JLabel lbl_Total = new JLabel("Total");

	JButton bnt_close = new JButton("Close");
	JLabel lbl_story1 = new JLabel("Stroy Not Available");

	JLabel lbl_com1 = new JLabel("0");

	JLabel lbl_tot1 = new JLabel("10");

	//
	public static String getName = null;

	//

	public ProgressDashborard(JFrame parent) {
		super(JOptionPane.getFrameForComponent(parent), "Progress", true);
		this.showReport();

	}

	public void showReport() {
		this.setSize(350, 220);
		this.setLayout(null);
		this.setResizable(false);
		this.setLocationRelativeTo(null);
		txt_averageweight.setBounds(400, 30, 100, 30);
		txt_averageweight.setForeground(Color.red);
		txt_averageweight.setFont(font2);
		pan_graph.setBounds(0, 0, 350, 220);
		pan_graph.setLayout(new GridLayout(0, 1));
		pan_graph.setBackground(Color.black);

		lbl_type.setBounds(20, 15, 100, 30);
		lbl_complete.setBounds(190, 15, 100, 30);
		lbl_Total.setBounds(270, 15, 100, 30);

		lbl_story1.setBounds(20, 46, 240, 30);

		lbl_com1.setBounds(220, 46, 40, 30);

		lbl_tot1.setBounds(280, 46, 40, 30);

		bnt_close.setBounds(0, 165, 350, 25);

		bnt_close.addActionListener(this);

		lbl_story1.setFont(font2);

		lbl_type.setFont(font1);
		lbl_complete.setFont(font1);
		lbl_Total.setFont(font1);

		lst_name.setFont(font2);
		lst_name.setBackground(Color.decode("#34B14C"));
		lst_name.setForeground(Color.WHITE);
		lst_name.addMouseListener(this);
		scroll_panel.setViewportView(lst_name);
		pan_graph.add(scroll_panel);

		lbl_type.setVisible(false);
		lbl_complete.setVisible(false);
		lbl_Total.setVisible(false);

		lbl_com1.setVisible(false);

		lbl_tot1.setVisible(false);

		lbl_story1.setVisible(false);

		bnt_close.setVisible(false);

		this.add(lbl_type);
		this.add(lbl_complete);
		this.add(lbl_Total);
		this.add(bnt_close);

		this.add(lbl_com1);

		this.add(lbl_tot1);
		this.add(lbl_story1);
		this.add(pan_graph);
		this.add(txt_averageweight);
		this.getContentPane().setBackground(Color.decode("#34B14C"));
		bnt_close.setBackground(Color.decode("#B59882"));
		get_PlayerName(lst_name);
		this.setVisible(true);
	}

	@Override
	public void mouseClicked(MouseEvent event) {
		Object source = event.getSource();
		if (source.equals(lst_name)) {
			getName = lst_name.getSelectedValue();
			visable_true();
			get_Playerprogress(getName);

		}

	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub

	}

	public void visable_true() {
		pan_graph.setVisible(false);

		lbl_type.setVisible(true);
		lbl_complete.setVisible(true);
		lbl_Total.setVisible(true);
		lbl_com1.setVisible(true);

		lbl_tot1.setVisible(true);

		lbl_story1.setVisible(true);

		bnt_close.setVisible(true);

	}

	public void click_closebutton() {
		pan_graph.setVisible(true);

		lbl_type.setVisible(false);
		lbl_complete.setVisible(false);
		lbl_Total.setVisible(false);
		lbl_com1.setVisible(false);
		lbl_tot1.setVisible(false);
		lbl_story1.setVisible(false);
		bnt_close.setVisible(false);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object source = e.getSource();
		if (source.equals(bnt_close)) {
			click_closebutton();
		}
	}

	public void select_character() {
		lbl_com1.setVisible(true);

	}

	public void select_location() {
		lbl_com1.setVisible(false);

	}

	public void get_PlayerName(JList<String> txt_5) {
		DefaultListModel<String> m_5 = new DefaultListModel<String>();

		Connection con = null;
		try {
			con = DBConnection.getConnecttion();
		} catch (Exception e) {
		}
		try {
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM  progress";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				String name = rs.getString(2).trim();
				m_5.addElement(name);
				txt_5.setModel(m_5);
			}
			con.close();
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, ex.toString());
		}
	}

	public void get_Playerprogress(String name) {

		Connection con = null;
		try {
			con = DBConnection.getConnecttion();
		} catch (Exception e) {
		}
		try {

			Statement stmt = con.createStatement();
			String query = "SELECT * FROM progress WHERE name='" + name + "'";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				String paly = rs.getString(3).trim();
				String paly1 = rs.getString(4).trim();
				lbl_com1.setText(paly);
				lbl_story1.setText(paly1);
			}
			con.close();
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, ex.toString());
		}
	}

}
