import com.gzy.qinglian.NodeConfig;
import java.nio.charset.StandardCharsets;
/** Private stdin/stdout adapter for exercising the exact App config on Linux. */
public class NodeConfigCli {
 public static void main(String[] args)throws Exception {
  java.util.List<String> options=java.util.Arrays.asList(args);
  System.out.print(NodeConfig.build(new String(System.in.readAllBytes(),StandardCharsets.UTF_8),options.contains("bypass-cn"),options.contains("two-hy2")?2:1,options.contains("mux")));
 }
}
