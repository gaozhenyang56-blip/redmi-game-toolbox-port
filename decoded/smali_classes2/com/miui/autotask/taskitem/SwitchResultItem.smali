.class public Lcom/miui/autotask/taskitem/SwitchResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field private static final SHUTDOWN_ACTION:Ljava/lang/String; = "com.miui.powercenter.SHUTDOWN_NOW"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080435

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080434

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_switch_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a5e

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a5e

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080436

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/powercenter/bootshutdown/ShutdownAlarmIntentService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.miui.powercenter.SHUTDOWN_NOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
