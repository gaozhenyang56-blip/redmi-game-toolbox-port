.class public abstract Lmiuix/responsive/page/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static sEnableResponsive:Z = true


# instance fields
.field protected final mOldState:Ljm/b;

.field protected mState:Ljm/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljm/b;

    invoke-direct {v0}, Ljm/b;-><init>()V

    iput-object v0, p0, Lmiuix/responsive/page/manager/a;->mOldState:Ljm/b;

    return-void
.end method

.method public static disableResponsive()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lmiuix/responsive/page/manager/a;->sEnableResponsive:Z

    return-void
.end method

.method public static enableResponsive()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lmiuix/responsive/page/manager/a;->sEnableResponsive:Z

    return-void
.end method

.method public static isSupportResponsive()Z
    .locals 1

    sget-boolean v0, Lmiuix/responsive/page/manager/a;->sEnableResponsive:Z

    return v0
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected computeResponsiveState()Ljm/b;
    .locals 2

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v1

    invoke-static {v0, v1}, Lhm/a;->a(Landroid/content/Context;Lbl/o;)Ljm/b;

    move-result-object v0

    return-object v0
.end method

.method protected computeResponsiveStateFromConfig(Landroid/content/res/Configuration;)Ljm/b;
    .locals 2

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbl/c;->i(Landroid/content/Context;)Lbl/o;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lhm/a;->b(Landroid/content/Context;Lbl/o;Landroid/content/res/Configuration;)Ljm/b;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getContext()Landroid/content/Context;
.end method

.method protected isStateEquals(Ljm/b;Ljm/b;)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onAfterConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onBeforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
