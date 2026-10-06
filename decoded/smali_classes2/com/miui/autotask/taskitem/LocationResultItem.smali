.class public Lcom/miui/autotask/taskitem/LocationResultItem;
.super Lcom/miui/autotask/taskitem/LocationItem;
.source "SourceFile"


# static fields
.field private static final CURRENT_MODE_KEY:Ljava/lang/String; = "CURRENT_MODE"

.field private static final MODE_CHANGING_ACTION:Ljava/lang/String; = "com.android.settings.location.MODE_CHANGING"

.field private static final NEW_MODE_KEY:Ljava/lang/String; = "NEW_MODE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LocationItem;-><init>()V

    return-void
.end method

.method private y(Z)V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    :cond_0
    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v3, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "CURRENT_MODE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "NEW_MODE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_location_result_item"

    return-object v0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/LocationResultItem;->y(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/LocationResultItem;->y(Z)V

    return-void
.end method
