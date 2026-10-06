.class public Lcom/miui/autotask/taskitem/HotspotResultItem;
.super Lcom/miui/autotask/taskitem/HotspotItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/HotspotItem;-><init>()V

    return-void
.end method

.method private y(Z)V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lp4/j;->b(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_hotspot_result_item"

    return-object v0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/HotspotResultItem;->y(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/HotspotResultItem;->y(Z)V

    return-void
.end method
