public class Wordlist{
TreeMap<String,ArrayList<String>> map;
 ArrayList<String> reg;
  ArrayList<String> wors;
  public Wordlist(){
 map=new TreeMap<String,ArrayList<String>>();
 String[] w=loadStrings("hey.txt");
 String tests="";
wors=new ArrayList<String>();
reg=new ArrayList<String>();
for(String x:w){
  //println(x);
  wors.add(x);
}
for(String x:wors){
String s[]=x.split("[\\s\\[\\]\\(\\)\\.\\!\\/\\,\\?\\{\\}\\:\\;\"0-9]");
for(String y:s){
if(!y.equals("")){
    reg.add(y.toLowerCase());
  if(!map.containsKey(y.toLowerCase())){
map.put(y.toLowerCase(), new ArrayList<String>());
}
}
}
}

for(int i=0;i<reg.size();i++){
try{
map.get(reg.get(i)).add(reg.get(i+1));
}catch(Exception e){
map.get(reg.get(i)).add(reg.get(0));
}
}
//for(String x:map.keySet()){
//println(x+" "+map.get(x));
//} //<>//
}
public String generate(){
String out="";
int ind=(int)(Math.random()*reg.size());
boolean s=true;
String lasts="";
while(out.length()<=555){
  try{
if(s){
  lasts=reg.get(ind);
out+=(reg.get(ind))+" ";
s=!s;
continue;
}
ind=(int)(Math.random()*map.get(lasts).size());
out+=map.get(lasts).get(ind)+" ";
lasts=map.get(lasts).get(ind);
  }catch (Exception e){
  return out;
  }
}
return out;
}
void playSong(){
try {
      // * Open a synthesizer
      Synthesizer synth = MidiSystem.getSynthesizer();
      synth.open();
      channels = synth.getChannels();

      // * Play some notes
      play("6D",  1000);
      rest(500);
      
      play("6D",  300);
      play("6C#", 300);
      play("6D",  1000);
      rest(500);
      
      play("6D",  300);
      play("6C#", 300);
      play("6D",  1000);
      play("6E",  300);
      play("6E",  600);
      play("6G",  300);
      play("6G",  600);
      rest(500);
      
      // * finish up
      synth.close();
    }
    catch (Exception e) {
      throw new RuntimeException(e);
    }
}
private void play(String note, int duration) throws InterruptedException
  {
      // * start playing a note
      channels[INSTRUMENT].noteOn(id(note), VOLUME );
      // * wait
      Thread.sleep( duration );
      // * stop playing a note
      channels[INSTRUMENT].noteOff(id(note));
  }
  
  /**
   * Plays nothing for the given duration
   */
  private  void rest(int duration) throws InterruptedException
  {
    Thread.sleep(duration);
  }
  
  /**
   * Returns the MIDI id for a given note: eg. 4C -> 60
   * @return
   */
  private int id(String note)
  {
    int octave = Integer.parseInt(note.substring(0, 1));
    return notes.indexOf(note.substring(1)) + 12 * octave + 12;  
  }
}
