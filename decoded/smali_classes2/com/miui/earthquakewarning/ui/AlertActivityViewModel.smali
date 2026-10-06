.class public Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/AlertActivityViewModel$Factory;
    }
.end annotation


# instance fields
.field private final countdown:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final datasource:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lcom/miui/earthquakewarning/model/UserQuakeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->datasource:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountdown()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->countdown:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static synthetic a(Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->lambda$startCountdown$0()V

    return-void
.end method

.method private synthetic lambda$startCountdown$0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->countdown:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Ln5/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCountdown()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->countdown:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public getDatasource()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/miui/earthquakewarning/model/UserQuakeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->datasource:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public startCountdown(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    new-instance v1, Lcom/miui/earthquakewarning/ui/a;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/a;-><init>(Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public updateDatasource(Lcom/miui/earthquakewarning/model/UserQuakeItem;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->countdown:Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->getCountdown()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/AlertActivityViewModel;->datasource:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method
