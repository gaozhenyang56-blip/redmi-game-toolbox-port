package androidx.preference;
public class ListPreference extends Preference {
 public ListPreference(String key){super(key);}
 public CharSequence m(){return "";}
 public static final class a implements Preference.f {
  public static a b(){return new a();}
  public CharSequence a(Preference p){return ((ListPreference)p).m();}
 }
}
