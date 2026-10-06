.class public Lcom/miui/autotask/taskitem/DisturbResultItem;
.super Lcom/miui/autotask/taskitem/SwitchTypeItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisturbResultItem"

.field private static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:Ljava/lang/String; = "ZEN_MODE_IMPORTANT_INTERRUPTIONS"

.field private static final ZEN_MODE_OFF:Ljava/lang/String; = "ZEN_MODE_OFF"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;-><init>()V

    return-void
.end method

.method private y(Z)V
    .locals 10

    const-string v0, "DisturbResultItem"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :catch_0
    const-string v3, "SettingNotFoundException"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v3, v1

    :goto_0
    if-ne v3, p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_2

    return-void

    :cond_2
    :try_start_1
    const-class v4, Landroid/provider/Settings$Global;

    if-eqz p1, :cond_3

    const-string p1, "ZEN_MODE_IMPORTANT_INTERRUPTIONS"

    goto :goto_1

    :cond_3
    const-string p1, "ZEN_MODE_OFF"

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-class v4, Landroid/provider/Settings$Global;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move p1, v2

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setZenMode"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    const-class v8, Landroid/net/Uri;

    aput-object v8, v7, v2

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 p1, 0x0

    aput-object p1, v5, v2

    aput-object v0, v5, v9

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    const-string v0, "auto_task_tag"

    const-string v1, "setZenMode fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080447

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080446

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_disturb_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121962

    goto :goto_0

    :cond_0
    const v0, 0x7f12194d

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a63

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080448

    return v0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/DisturbResultItem;->y(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/DisturbResultItem;->y(Z)V

    return-void
.end method
