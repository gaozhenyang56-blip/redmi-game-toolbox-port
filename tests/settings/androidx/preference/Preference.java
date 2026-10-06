package androidx.preference;
public class Preference {
 public interface c {boolean onPreferenceChange(Preference p,Object value);}
 public String key; public boolean enabled,visible,persistent=true; public CharSequence summary=""; public c listener;
 public Preference(String key){this.key=key;}
 public String getKey(){return key;}
 public void setVisible(boolean value){visible=value;}
 public void setEnabled(boolean value){enabled=value;}
 public void setPersistent(boolean value){persistent=value;}
 public CharSequence getSummary(){return summary;}
 public void setSummary(CharSequence value){summary=value;}
 public void setOnPreferenceChangeListener(c value){listener=value;}
}
