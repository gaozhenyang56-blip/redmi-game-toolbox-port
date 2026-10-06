.class public Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;
.super Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803fa

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803f9

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_wlan_disconnect_specified_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->w()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120303

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a0b

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803fb

    return v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    invoke-virtual {v1}, Lu3/h;->E0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
