.class public final Lqc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc/c$a;
    }
.end annotation


# static fields
.field public static final a:Lqc/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc/c;

    invoke-direct {v0}, Lqc/c;-><init>()V

    sput-object v0, Lqc/c;->a:Lqc/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lqc/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lqc/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ProvisionExtra"

    if-eqz v0, :cond_0

    invoke-static {}, Lmiuix/autodensity/f;->j()Lmiuix/autodensity/f;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/autodensity/f;->d()D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->setForceDeviceScale(F)V

    invoke-static {}, Lmiuix/autodensity/f;->j()Lmiuix/autodensity/f;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/autodensity/f;->e()D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->setForcePPI(I)V

    const-string p1, "setAutoDensityScaleAndPpi Empty"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Lmiuix/autodensity/AutoDensityConfig;->setForceDeviceScale(F)V

    invoke-static {p2}, Lmiuix/autodensity/AutoDensityConfig;->setForcePPI(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoDensityScaleAndPpi Success vScale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " vPpi:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lmiuix/autodensity/f;->j()Lmiuix/autodensity/f;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/autodensity/f;->d()D

    move-result-wide v2

    double-to-float p2, v2

    invoke-static {p2}, Lmiuix/autodensity/AutoDensityConfig;->setForceDeviceScale(F)V

    invoke-static {}, Lmiuix/autodensity/f;->j()Lmiuix/autodensity/f;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/autodensity/f;->e()D

    move-result-wide v2

    double-to-int p2, v2

    invoke-static {p2}, Lmiuix/autodensity/AutoDensityConfig;->setForcePPI(I)V

    const-string p2, "setAutoDensityScaleAndPpi Exception"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqc/c;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lx4/y;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ProvisionExtra"

    const-string v1, "syncAutoDensityScale"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "provision_auto_density_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "provision_auto_density_ppi"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lqc/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Lqc/c$a;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v4, p1}, Lqc/c$a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
