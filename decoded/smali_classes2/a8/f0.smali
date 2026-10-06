.class public La8/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, La8/f0;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/f;->a(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/aihelper/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, La8/f0;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, La8/f0;->b:Z

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, La8/f0;->a:Z

    return-void
.end method
