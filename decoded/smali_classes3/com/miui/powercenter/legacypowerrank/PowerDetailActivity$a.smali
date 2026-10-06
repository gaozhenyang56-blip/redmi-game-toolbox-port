.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Double;
    .locals 8

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    if-eqz p1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->l()D

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    iget-object v5, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v5}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget v7, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->c:I

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v5

    div-double/2addr v5, v3

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v5, v2

    if-ltz p1, :cond_5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-wide v0, v5

    :cond_5
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v2
.end method

.method protected b(Ljava/lang/Double;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->e(I)V

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    move-result-object v1

    const v2, 0x7f1210d9

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const-string p1, "%.2f"

    invoke-static {v5, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->a([Ljava/lang/Void;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$a;->b(Ljava/lang/Double;)V

    return-void
.end method
