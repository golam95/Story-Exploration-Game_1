package com.storyexplation.util;

import java.io.File;
import java.io.IOException;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.FloatControl;
import javax.sound.sampled.LineUnavailableException;
import javax.sound.sampled.UnsupportedAudioFileException;

public class Music {

	private static boolean mute_taskcomplete = false;
	public static Clip complete;

	public static void backgroundLoop_ownthegame() {// Game own the game
		try {
			AudioInputStream audioStream = AudioSystem.getAudioInputStream(new File("audio/clap.wav"));
			complete = AudioSystem.getClip();
			complete.open(audioStream);
			FloatControl volumeControl = (FloatControl) complete.getControl(FloatControl.Type.MASTER_GAIN); // new
			volumeControl.setValue(-5.0f); // Reduce volume by 5 decibels.
			muteSetting_mute_ownthegame();
		} catch (UnsupportedAudioFileException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (LineUnavailableException e) {
			e.printStackTrace();
		}
	}

	public static void muteSetting_mute_ownthegame() {
		if (!isMute_mute_ownthegame()) {
			complete.start();
		} else {
			complete.stop();
		}
	}

	public static boolean isMute_mute_ownthegame() {
		return mute_taskcomplete;
	}

	public static void setMute_mute_ownthegame(boolean mute) {
		Music.mute_taskcomplete = mute;
	}

}
