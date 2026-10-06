import com.gzy.redmiport.ForegroundSnapshot;
import com.gzy.redmiport.FpsShellCommand;

public class ForegroundSnapshotTest {
    public static void main(String[] args) {
        if (args.length > 0) { System.out.print(FpsShellCommand.COMMAND); return; }
        check("mResumedActivity: ActivityRecord{a u0 com.old.game/.Main}\n"
            + "topResumedActivity=ActivityRecord{b u0 com.top.game/.Main}\n"
            + "mCurrentFocus=Window{c u0 com.focus.game/.Main}", "com.top.game");
        check("mResumedActivity: ActivityRecord{a u0 com.old.game/.Main}\n"
            + "mCurrentFocus=Window{c u0 com.focus.game/.Main}", "com.focus.game");
        check("topResumedActivity=null\nmCurrentFocus=null\n"
            + "mResumedActivity: ActivityRecord{a u0 com.old.game/.Main}", "com.old.game");
        check("topResumedActivity: ActivityRecord{a u0 com.top.game/.Main}", "com.top.game");
        check("topResumedActivity=null\nmCurrentFocus=null", "");
        check("Permission Denial: can't dump activity", "");
        System.out.println("6 foreground snapshot cases passed");
    }
    private static void check(String dump, String expected) {
        if (!ForegroundSnapshot.packageName(dump).equals(expected)) throw new AssertionError(dump);
    }
}
