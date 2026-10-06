.class public final Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private job:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPlaySound$p(Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;)Lcom/miui/warningcenter/mijia/MijiaPlaySound;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    return-object p0
.end method

.method public static final synthetic access$releasePlayer(Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->releasePlayer()V

    return-void
.end method

.method private final releasePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->stop()V

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    return-void
.end method


# virtual methods
.method protected onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/r0;->onCleared()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->releasePlayer()V

    return-void
.end method

.method public final playSound()V
    .locals 8

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->job:Llk/s1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/MijiaPlaySound;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->playSound:Lcom/miui/warningcenter/mijia/MijiaPlaySound;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel$playSound$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel$playSound$1;-><init>(Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/DisasterAlertViewModel;->job:Llk/s1;

    return-void
.end method
