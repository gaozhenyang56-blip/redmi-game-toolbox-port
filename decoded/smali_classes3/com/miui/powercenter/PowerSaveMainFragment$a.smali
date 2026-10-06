.class Lcom/miui/powercenter/PowerSaveMainFragment$a;
.super Lcom/miui/powercenter/batteryhistory/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerSaveMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/batteryhistory/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/z;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/powercenter/batteryhistory/i$a;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/legacypowerrank/BatteryData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/BatteryHistogramItem;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/PowerSaveMainFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/miui/powercenter/batteryhistory/z;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/powercenter/batteryhistory/p;->i(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/batteryhistory/p;->h(Ljava/util/List;)D

    move-result-wide v4

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/batteryhistory/p;->n(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/powercenter/batteryhistory/p;->j(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/miui/powercenter/batteryhistory/p;->o(D)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/miui/powercenter/batteryhistory/p;->k(Ljava/util/List;)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/p;->d()Lcom/miui/powercenter/batteryhistory/p;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/miui/powercenter/batteryhistory/p;->l(D)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/powercenter/PowerSaveMainFragment$a$a;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment$a;Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;D)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
