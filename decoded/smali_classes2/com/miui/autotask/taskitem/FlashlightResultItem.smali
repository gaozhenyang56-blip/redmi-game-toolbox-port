.class public Lcom/miui/autotask/taskitem/FlashlightResultItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field private static final EXTRA_IS_TOGGLE:Ljava/lang/String; = "miui.intent.extra.IS_TOGGLE"

.field private static final FLASH_ACTION:Ljava/lang/String; = "miui.intent.action.TOGGLE_TORCH"

.field private static final FLASH_EXTRA:Ljava/lang/String; = "miui.intent.extra.IS_ENABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method

.method private v(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.TOGGLE_TORCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "miui.intent.extra.IS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080403

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080402

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_flashlight_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1218cd

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a51

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080404

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/FlashlightResultItem;->v(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/FlashlightResultItem;->v(Z)V

    return-void
.end method
