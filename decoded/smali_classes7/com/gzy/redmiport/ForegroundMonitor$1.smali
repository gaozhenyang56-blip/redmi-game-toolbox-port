.class Lcom/gzy/redmiport/ForegroundMonitor$1;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ForegroundMonitor;->start(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field last:Ljava/lang/String;

.field private final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 23
    :try_start_0
    const-string v0, "dumpsys activity activities; dumpsys window windows"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    const-string v1, "\u524d\u53f0\u76d1\u6d4b\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5 Shizuku"

    # invokes: Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/gzy/redmiport/ForegroundMonitor;->access$0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_10b

    const/4 v2, 0x0

    :try_start_16
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_101

    :goto_22
    :try_start_22
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_fb

    if-nez v0, :cond_f0

    :try_start_28
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_101

    .line 25
    :try_start_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gzy/redmiport/ForegroundSnapshot;->packageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    const-string v1, "\u7cfb\u7edf\u672a\u8fd4\u56de\u524d\u53f0\u5e94\u7528"

    # invokes: Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/gzy/redmiport/ForegroundMonitor;->access$0(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_41
    const-string v1, "com.miui.common.e"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "d"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_10b

    .line 27
    :try_start_58
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_62} :catch_da
    .catchall {:try_start_58 .. :try_end_62} :catchall_10b

    .line 28
    :try_start_62
    iget-object v3, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    instance-of v3, v3, Lcom/gzy/redmiport/ForegroundMonitor$Listener;

    if-eqz v3, :cond_77

    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$1()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/gzy/redmiport/ForegroundMonitor$1$1;

    iget-object v4, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/gzy/redmiport/ForegroundMonitor$1$1;-><init>(Lcom/gzy/redmiport/ForegroundMonitor$1;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 29
    :cond_77
    iget-object v3, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    return-void

    .line 30
    :cond_80
    const-string v3, "com.gzy.redmiport.compat.process.ForegroundInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 31
    const-string v6, "mForegroundPackageName"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "mLastForegroundPackageName"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    iget-object v7, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const-string v6, "mForegroundUid"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_ad
    .catchall {:try_start_62 .. :try_end_ad} :catchall_10b

    if-nez v2, :cond_c6

    :try_start_af
    const-string v2, "mLastForegroundUid"

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_c4} :catch_c5
    .catchall {:try_start_af .. :try_end_c4} :catchall_10b

    goto :goto_c6

    :catch_c5
    move-exception v1

    .line 33
    :cond_c6
    :goto_c6
    :try_start_c6
    iput-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-static {v5}, Lcom/gzy/redmiport/ForegroundMonitor;->access$3(Ljava/lang/Object;)V

    .line 34
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$1()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/gzy/redmiport/ForegroundMonitor$1$2;

    iget-object v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v5}, Lcom/gzy/redmiport/ForegroundMonitor$1$2;-><init>(Lcom/gzy/redmiport/ForegroundMonitor$1;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    goto :goto_12d

    .line 27
    :catch_da
    move-exception v1

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65e0\u6cd5\u8bc6\u522b\u524d\u53f0\u5e94\u7528\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/gzy/redmiport/ForegroundMonitor;->access$0(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_c6 .. :try_end_ef} :catchall_10b

    return-void

    .line 24
    :cond_f0
    :try_start_f0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_fb

    goto/16 :goto_22

    :catchall_fb
    move-exception v0

    move-object v2, v0

    :try_start_fd
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_101
    .catchall {:try_start_fd .. :try_end_101} :catchall_101

    :catchall_101
    move-exception v0

    if-eqz v2, :cond_10a

    if-eq v2, v0, :cond_109

    :try_start_106
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_109
    move-object v0, v2

    :cond_10a
    throw v0
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_10b

    .line 37
    :catchall_10b
    move-exception v0

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u524d\u53f0\u76d1\u6d4b\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/gzy/redmiport/ForegroundMonitor;->unavailable(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/gzy/redmiport/ForegroundMonitor;->access$0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Shell foreground monitor"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12d
    return-void
.end method
