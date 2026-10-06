.class public Lcom/miui/powercenter/batteryhistory/d0$p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/batteryhistory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/miui/powercenter/batteryhistory/u;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/PowerSaveMainFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/batteryhistory/d0;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:J

.field private f:J


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment;ZILcom/miui/powercenter/batteryhistory/d0;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->b:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->c:Z

    iput p3, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/PowerSaveMainFragment;ZILcom/miui/powercenter/batteryhistory/d0;Lcom/miui/powercenter/batteryhistory/d0$g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/powercenter/batteryhistory/d0$p;-><init>(Lcom/miui/powercenter/PowerSaveMainFragment;ZILcom/miui/powercenter/batteryhistory/d0;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/i;->d()Lcom/miui/powercenter/batteryhistory/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/powercenter/batteryhistory/i;->c()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/PowerSaveMainFragment;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/batteryhistory/d0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->d:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    const-wide/16 v2, 0x64

    iget-wide v4, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->f:J

    mul-long/2addr v4, v2

    sub-int/2addr v1, v0

    int-to-long v0, v1

    div-long/2addr v4, v0

    iput-wide v4, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->e:J

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/powercenter/batteryhistory/b;->e(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/powercenter/batteryhistory/b$a;->a:J

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/o;->a(Landroid/content/Context;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->f:J

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/PowerSaveMainFragment;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/d0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->c:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, v0, Lcom/miui/powercenter/batteryhistory/d0;->B:Z

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/d0;->h0(J)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->e:J

    long-to-float v2, v2

    const/4 v3, 0x0

    aput v2, p1, v3

    iget-wide v4, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->f:J

    long-to-float v2, v4

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lcom/miui/powercenter/batteryhistory/d0$p$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/powercenter/batteryhistory/d0$p$a;-><init>(Lcom/miui/powercenter/batteryhistory/d0$p;Lcom/miui/powercenter/batteryhistory/d0;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/d0$p;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/powercenter/batteryhistory/d0;->h0(J)V

    :cond_2
    :goto_0
    iput-boolean v1, v0, Lcom/miui/powercenter/batteryhistory/d0;->B:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0$p;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/d0$p;->b(Ljava/util/List;)V

    return-void
.end method
