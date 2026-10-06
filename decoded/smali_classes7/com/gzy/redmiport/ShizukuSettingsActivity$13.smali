.class Lcom/gzy/redmiport/ShizukuSettingsActivity$13;
.super Ljava/lang/Object;
.source "ShizukuSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gzy/redmiport/ShizukuSettingsActivity;->testChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/ShizukuSettingsActivity;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;)Lcom/gzy/redmiport/ShizukuSettingsActivity;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 89
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "dumpsys SurfaceFlinger --list"

    invoke-static {v1}, Lcom/gzy/redmiport/PortRuntime;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_41

    .line 90
    if-nez v1, :cond_c

    :try_start_9
    const-string v2, "\u6570\u636e\u901a\u9053\u672a\u8fde\u63a5\uff0c\u8bf7\u542f\u52a8 Shizuku \u5e76\u6388\u6743"

    goto :goto_27

    .line 92
    :cond_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 93
    nop

    .line 94
    const/4 v3, 0x0

    :cond_1a
    :goto_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 95
    if-lez v3, :cond_25

    const-string v2, "SurfaceFlinger \u6570\u636e\u53ef\u8bfb\u53d6\uff1b\u6e38\u620f FPS \u8bf7\u8fdb\u5165\u6e38\u620f\u540e\u67e5\u770b"

    goto :goto_27

    :cond_25
    const-string v2, "\u672a\u8bfb\u53d6\u5230 SurfaceFlinger \u6570\u636e"
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_3a

    .line 97
    :goto_27
    if-eqz v1, :cond_69

    :try_start_29
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_41

    goto :goto_69

    .line 94
    :cond_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3a

    if-nez v4, :cond_1a

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 97
    :catchall_3a
    move-exception v0

    if-eqz v1, :cond_40

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_40
    throw v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v1

    if-eqz v0, :cond_4a

    if-eq v0, v1, :cond_4b

    :try_start_46
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4b

    :cond_4a
    move-object v0, v1

    :cond_4b
    :goto_4b
    throw v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u68c0\u6d4b\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "FPS channel probe"

    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_69
    :goto_69
    nop

    .line 99
    iget-object v0, p0, Lcom/gzy/redmiport/ShizukuSettingsActivity$13;->this$0:Lcom/gzy/redmiport/ShizukuSettingsActivity;

    new-instance v1, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;

    invoke-direct {v1, p0, v2}, Lcom/gzy/redmiport/ShizukuSettingsActivity$13$1;-><init>(Lcom/gzy/redmiport/ShizukuSettingsActivity$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gzy/redmiport/ShizukuSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
