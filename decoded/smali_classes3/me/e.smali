.class public Lme/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static declared-synchronized c()I
    .locals 2

    const-class v0, Lme/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lme/e;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-static {}, Lme/e;->n()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lme/e;->a:Ljava/lang/Integer;

    :cond_0
    sget-object v1, Lme/e;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()I
    .locals 6

    const-string v0, "getChargeTemp"

    const-string v1, "ChargeTimeUtilsV2"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/thermal/thermal_message/charger_temp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_3
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_0

    :catch_5
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_0
    :try_start_3
    invoke-static {v1, v0, v2}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    const-string v2, ""

    :goto_1
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move v3, v0

    goto :goto_2

    :catch_6
    move-exception v2

    invoke-static {v1, v0, v2}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChargeTemp :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_2
    move-exception v0

    move-object v2, v3

    :goto_3
    invoke-static {v2}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lme/w;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chargeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChargeTimeUtilsV2"

    invoke-static {v2, v1}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()I
    .locals 6

    const-string v0, "getFCC"

    const-string v1, "ChargeTimeUtilsV2"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/power_supply/battery/charge_full"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/qcom-battery/battery/charge_full"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v4, v2

    goto :goto_0

    :catch_5
    move-exception v3

    move-object v4, v2

    :goto_0
    :try_start_3
    invoke-static {v1, v0, v3}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    const-string v2, ""

    :goto_1
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception v2

    invoke-static {v1, v0, v2}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFCC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v2}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method

.method public static g()I
    .locals 6

    const-string v0, "getFullCapacity"

    const-string v1, "ChargeTimeUtilsV2"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/power_supply/battery/charge_full_design"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/qcom-battery/battery/charge_full_design"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v4, v2

    goto :goto_0

    :catch_5
    move-exception v3

    move-object v4, v2

    :goto_0
    :try_start_3
    invoke-static {v1, v0, v3}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    const-string v2, ""

    :goto_1
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception v2

    invoke-static {v1, v0, v2}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFullCapacity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v2}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method

.method public static h()I
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.powercenter.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getLeftChargeTimeV2"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "left_charge_time_v2"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static i()I
    .locals 3

    invoke-static {}, Lme/j;->n()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lme/w;->m()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power_max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChargeTimeUtilsV2"

    invoke-static {v2, v1}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static j()I
    .locals 2

    invoke-static {}, Lme/j;->g()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lme/b;->A()Z

    move-result v0

    const-string v1, "/sys/class/qcom-battery/fg1_rm"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lme/r;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "/sys/class/qcom-battery/fg2_rm"

    invoke-static {v1}, Lme/r;->c(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lme/r;->c(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static k()I
    .locals 3

    const-string v0, "fuxi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lme/e;->d()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static l()Z
    .locals 2

    invoke-static {}, Lme/e;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD_PPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 1

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lme/q;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lme/e;->c()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n()I
    .locals 7

    const-string v0, "w"

    const-string v1, "getBatteryModel"

    const-string v2, "ChargeTimeUtilsV2"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/power_supply/battery/model_name"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v5}, Lbl/e;->d(Ljava/io/Reader;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_0

    :catch_3
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_0

    :catch_5
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    :goto_0
    :try_start_3
    invoke-static {v2, v1, v3}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v5}, Lbl/e;->d(Ljava/io/Reader;)V

    const-string v3, ""

    :goto_1
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "mah"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryModel result ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-static {v2, v1, v0}, Lme/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBatteryModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lme/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :catchall_2
    move-exception v0

    move-object v3, v4

    :goto_3
    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v5}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method
