//https://docs.oracle.com/javase/7/docs/api/javax/sound/midi/MidiChannel.html#noteOn(int,%20int)
//https://gist.github.com/pbloem/d29bf80e69d333415622
//https://www.geeksforgeeks.org/converting-text-speech-java/
import java.util.*;
import java.io.*;
import javax.sound.midi.MidiSystem;
import javax.sound.midi.Synthesizer;
import javax.sound.midi.MidiChannel;
private static List<String> notes = Arrays.asList("C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B");
  private static MidiChannel[] channels;
  private static int INSTRUMENT = 0; // 0 is a piano, 9 is percussion, other channels are for other instruments
  private static int VOLUME = 80; // between 0 et 127
Wordlist w;
void setup(){
  w=new Wordlist();
  println(w.generate());
  w.playSong();
}
