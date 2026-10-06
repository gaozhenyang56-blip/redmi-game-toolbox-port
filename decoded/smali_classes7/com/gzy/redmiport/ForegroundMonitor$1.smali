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

    .line 19
    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 21
    :try_start_0
    const-string v0, "dumpsys activity activities; dumpsys window windows"

    invoke-static {v0}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 22
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_d9

    const/4 v2, 0x0

    :try_start_f
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_cf

    :goto_1b
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_c9

    if-nez v0, :cond_be

    :try_start_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_cf

    .line 23
    :try_start_24
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->component:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$0()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_33

    return-void

    :cond_33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    return-void

    .line 24
    :cond_41
    const-string v1, "com.gzy.redmiport.compat.process.ForegroundInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 25
    const-string v4, "mForegroundPackageName"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "mLastForegroundPackageName"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v5, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    const-string v4, "com.miui.common.e"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "d"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_76
    .catchall {:try_start_24 .. :try_end_76} :catchall_d9

    .line 27
    :try_start_76
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_80} :catch_bc
    .catchall {:try_start_76 .. :try_end_80} :catchall_d9

    .line 28
    :try_start_80
    const-string v5, "mForegroundUid"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    iget-object v4, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_d9

    if-nez v4, :cond_a8

    :try_start_91
    const-string v4, "mLastForegroundUid"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a6} :catch_a7
    .catchall {:try_start_91 .. :try_end_a6} :catchall_d9

    goto :goto_a8

    :catch_a7
    move-exception v1

    .line 29
    :cond_a8
    :goto_a8
    :try_start_a8
    iput-object v0, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->last:Ljava/lang/String;

    invoke-static {v3}, Lcom/gzy/redmiport/ForegroundMonitor;->access$1(Ljava/lang/Object;)V

    .line 30
    # getter for: Lcom/gzy/redmiport/ForegroundMonitor;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/gzy/redmiport/ForegroundMonitor;->access$2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/gzy/redmiport/ForegroundMonitor$1$1;

    iget-object v2, p0, Lcom/gzy/redmiport/ForegroundMonitor$1;->val$callback:Ljava/lang/Object;

    invoke-direct {v1, p0, v2, v3}, Lcom/gzy/redmiport/ForegroundMonitor$1$1;-><init>(Lcom/gzy/redmiport/ForegroundMonitor$1;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_bb
    .catchall {:try_start_a8 .. :try_end_bb} :catchall_d9

    .line 33
    goto :goto_df

    .line 27
    :catch_bc
    move-exception v0

    return-void

    .line 22
    :cond_be
    :try_start_be
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_c7
    .catchall {:try_start_be .. :try_end_c7} :catchall_c9

    goto/16 :goto_1b

    :catchall_c9
    move-exception v0

    move-object v2, v0

    :try_start_cb
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v2
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception v0

    if-eqz v2, :cond_d8

    if-eq v2, v0, :cond_d7

    :try_start_d4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d7
    move-object v0, v2

    :cond_d8
    throw v0
    :try_end_d9
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_d9

    .line 33
    :catchall_d9
    move-exception v0

    const-string v1, "Shell foreground monitor"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_df
    return-void
.end method
