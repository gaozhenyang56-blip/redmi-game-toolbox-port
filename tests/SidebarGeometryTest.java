import com.gzy.redmiport.SidebarGeometry;

public class SidebarGeometryTest {
    public static void main(String[] args){
        check(SidebarGeometry.inset(24,3)==72,"24 dp retreat at 3x density");
        check(SidebarGeometry.inset(0,3)==0,"edge mode");
        check(SidebarGeometry.inset(-20,2)==0,"negative offset");
        check(SidebarGeometry.inset(200,2)==128,"large offset clamp");
        check(SidebarGeometry.y(1200,120,25)==300,"upper portrait position");
        check(SidebarGeometry.y(600,120,75)==450,"lower landscape position");
        check(SidebarGeometry.y(100,120,75)==0,"handle taller than screen");
        check(SidebarGeometry.y(600,120,999)==480,"bottom remains on screen");
        check(SidebarGeometry.y(600,120,-999)==60,"top clamp");
        check(SidebarGeometry.y(0,120,50)==0,"empty screen bounds");
        System.out.println("10 sidebar geometry cases passed (no Android device)");
    }
    private static void check(boolean pass,String message){if(!pass)throw new AssertionError(message);}
}
