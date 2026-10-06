.class public Ls8/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/u$d;
    }
.end annotation


# static fields
.field private static o:Ls8/u;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/WindowManager;

.field private d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

.field private volatile e:Ll8/i;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ls8/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/miui/gamebooster/model/ActiveNewModel;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls8/u$a;

    invoke-direct {v0, p0}, Ls8/u$a;-><init>(Ls8/u;)V

    iput-object v0, p0, Ls8/u;->l:Ljava/lang/Runnable;

    new-instance v0, Ls8/l;

    invoke-direct {v0, p0}, Ls8/l;-><init>(Ls8/u;)V

    iput-object v0, p0, Ls8/u;->m:Ljava/lang/Runnable;

    new-instance v0, Ls8/u$b;

    invoke-direct {v0, p0}, Ls8/u$b;-><init>(Ls8/u;)V

    iput-object v0, p0, Ls8/u;->n:Ljava/lang/Runnable;

    iput-object p2, p0, Ls8/u;->a:Landroid/os/Handler;

    iput-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Ls8/u;->c:Landroid/view/WindowManager;

    return-void
.end method

.method private A(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0}, Ls8/u;->G()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-boolean v1, Lsl/a;->a:Z

    const v2, 0x7f1307f7

    const v3, 0x7f071e0c

    if-eqz v1, :cond_0

    const/16 p1, 0x33

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/dock/sidebar/j;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f1307f8

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {}, Lcom/miui/dock/sidebar/j;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x800033

    goto :goto_2

    :cond_2
    const v1, 0x800035

    :goto_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-direct {p0}, Ls8/u;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ls8/u;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls8/h;

    invoke-virtual {v1}, Ls8/h;->Y()I

    move-result v1

    iget-object v2, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071a82

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {v4}, La8/k2;->L(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071a83

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_3
    invoke-direct {p0, p1}, Ls8/u;->F(Landroid/view/View;)I

    move-result p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    :cond_4
    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_3
    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto/16 :goto_0
.end method

.method private B(Ljava/util/List;)Lcom/miui/gamebooster/model/ActiveNewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/ActiveNewModel;",
            ">;)",
            "Lcom/miui/gamebooster/model/ActiveNewModel;"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/ActiveNewModel;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method private C(Landroid/widget/ImageView;Landroid/content/Context;I)I
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array v0, p2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p2

    add-int/2addr v0, p1

    div-int/2addr p3, p2

    sub-int/2addr v0, p3

    return v0

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public static declared-synchronized D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;
    .locals 2

    const-class v0, Ls8/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls8/u;->o:Ls8/u;

    if-nez v1, :cond_0

    new-instance v1, Ls8/u;

    invoke-direct {v1, p0, p1}, Ls8/u;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Ls8/u;->o:Ls8/u;

    :cond_0
    sget-object p0, Ls8/u;->o:Ls8/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private E(Lcom/miui/dock/sidebar/j;I)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "GameToastWindowManager"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Ls8/u;->G()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1307f7

    goto :goto_0

    :cond_1
    const v3, 0x7f1307f8

    :goto_0
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x800033

    goto :goto_1

    :cond_2
    const v3, 0x800035

    :goto_1
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v3, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071e0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->w()Lcom/miui/dock/sidebar/RegionSamplingImageView;

    move-result-object p1

    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    iget-object p2, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0709ad

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget-object v0, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-direct {p0, p1, v0, p2}, Ls8/u;->C(Landroid/widget/ImageView;Landroid/content/Context;I)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07088e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    return-object v2

    :cond_3
    const-string p1, "unknow channel."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    :goto_2
    const-string p1, "anchor view is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private F(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Ls8/u;->S(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private G()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x7d3

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private H(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bubble_tips_display_time"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, La8/y1;->c(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private I()Z
    .locals 1

    iget-object v0, p0, Ls8/u;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic J()V
    .locals 1

    const-string v0, "time out"

    invoke-virtual {p0, v0}, Ls8/u;->W(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic K(Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ls8/u;->x()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p4

    sget-object v0, Lve/d;->c:Lve/d;

    iget-object v1, p0, Ls8/u;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/dock/sidebar/j;->H()Z

    move-result p2

    invoke-static {p4, p1, v0, v1, p2}, Lve/e;->b(Landroid/content/Context;Lcom/miui/gamebooster/model/ActiveModel;Lve/d;Ljava/lang/String;Z)Z

    const-string p2, "\u70b9\u51fb\u6c14\u6ce1\u901a\u77e5\u6253\u5f00\u5c0f\u7a97"

    invoke-direct {p0, p2, p1, p3}, Ls8/u;->e0(Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "click bubble tips fail "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameToastWindowManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic L(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ls8/u;->x()V

    const-string p3, "\u70b9\u51fb\u5173\u95ed\u6309\u94ae"

    invoke-direct {p0, p3, p1, p2}, Ls8/u;->e0(Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic M(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/u;->T(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method private synthetic N(Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Ls8/u;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lve/k;->R()Lve/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Lve/k;->N(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ls8/u;->B(Ljava/util/List;)Lcom/miui/gamebooster/model/ActiveNewModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "GameToastWindowManager"

    const-string p2, "active model is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Ls8/u;->a:Landroid/os/Handler;

    new-instance v2, Ls8/p;

    invoke-direct {v2, p0, v0, p2, p1}, Ls8/p;-><init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic O()V
    .locals 4

    iget-object v0, p0, Ls8/u;->e:Ll8/i;

    if-nez v0, :cond_1

    new-instance v0, Ll8/i;

    iget-object v1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll8/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ls8/u;->e:Ll8/i;

    :try_start_0
    iget-object v0, p0, Ls8/u;->e:Ll8/i;

    invoke-direct {p0, v0}, Ls8/u;->A(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    sget-boolean v1, Lsl/a;->a:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x7f6

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    iget-object v1, p0, Ls8/u;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Ls8/u;->e:Ll8/i;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Ls8/u;->e:Ll8/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ll8/i;->setAdded(Z)V

    iget-object v0, p0, Ls8/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Ls8/u;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9d8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameToastWindowManager"

    const-string v2, "add error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic P(Ljava/lang/String;Ls8/u$d;ILs8/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ls8/u;->U(Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    return-void
.end method

.method private synthetic Q(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getRelatedDataId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lm7/a;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/gamebooster/utils/a;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic R(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getRelatedDataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getDataId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {v2, p2}, Lm7/a;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v1, p1, v0}, Lcom/miui/gamebooster/utils/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private S(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->s(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->n(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private T(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 9

    const-string v0, "GameToastWindowManager"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Ls8/u;->g:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Ls8/u;->j:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object p2, p0, Ls8/u;->k:Ljava/lang/String;

    iget-object v1, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0219

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ls8/u;->f:Landroid/view/View;

    const v2, 0x7f0b01a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Ls8/u;->f:Landroid/view/View;

    const v4, 0x7f0b0c55

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Ls8/u;->f:Landroid/view/View;

    const v5, 0x7f0b060c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Ls8/u;->f:Landroid/view/View;

    const v6, 0x7f0b05f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getBubbleButtonContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveNewModel;->getBubbleContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ls8/q;

    invoke-direct {v2, p0, p1, p3, p2}, Ls8/q;-><init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ls8/r;

    invoke-direct {v1, p0, p1, p2}, Ls8/r;-><init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lx4/o0;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p3, v1}, Ls8/u;->E(Lcom/miui/dock/sidebar/j;I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v2, p0, Ls8/u;->c:Landroid/view/WindowManager;

    iget-object v3, p0, Ls8/u;->f:Landroid/view/View;

    invoke-interface {v2, v3, p3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/model/ActiveModel;->setHasShowTimes(I)V

    invoke-direct {p0, p2}, Ls8/u;->X(Ljava/lang/String;)V

    iget-object p3, p0, Ls8/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Ls8/u;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Ls8/u;->I()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Ls8/u;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ls8/h;

    const/16 v2, 0x370

    const/16 v3, 0x230

    const/16 v4, 0x3e8

    const/high16 v5, 0x41500000    # 13.0f

    const v6, 0x3ecccccd    # 0.4f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual/range {v1 .. v8}, Ls8/h;->Z0(IIIFFFF)V

    :cond_1
    invoke-direct {p0, p1, p2}, Ls8/u;->f0(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    const-string p1, "show bubble tips"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-object v3, p0, Ls8/u;->f:Landroid/view/View;

    iput-object v3, p0, Ls8/u;->j:Lcom/miui/gamebooster/model/ActiveNewModel;

    iput-object v3, p0, Ls8/u;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "show bubble tips error "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private U(Ljava/lang/String;Ls8/u$d;ILs8/h;)V
    .locals 3

    iget-object v0, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    const-string v1, "GameToastWindowManager"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ls8/u;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls8/u;->i:Ljava/lang/ref/WeakReference;

    iget-object p4, p0, Ls8/u;->b:Landroid/content/Context;

    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    const v0, 0x7f0e021a

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    iput-object p4, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    const v0, 0x7f0b0c7a

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    new-instance p4, Ls8/u$c;

    invoke-direct {p4, p0, p2}, Ls8/u$c;-><init>(Ls8/u;Ls8/u$d;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object p1, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    invoke-direct {p0, p1}, Ls8/u;->A(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Ls8/u;->c:Landroid/view/WindowManager;

    iget-object p4, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    invoke-interface {p2, p4, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/AddedRelativeLayout;->setAdded(Z)V

    iget-object p1, p0, Ls8/u;->a:Landroid/os/Handler;

    iget-object p2, p0, Ls8/u;->l:Ljava/lang/Runnable;

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "add error"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cancel game toast , isCanceled : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Ls8/u;->g:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", view : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private X(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, La8/x1;->l()La8/x1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bubble_tips_display_time"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, La8/y1;->i(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic a(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls8/u;->R(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ls8/u;)V
    .locals 0

    invoke-direct {p0}, Ls8/u;->J()V

    return-void
.end method

.method public static synthetic c(Ls8/u;)V
    .locals 0

    invoke-direct {p0}, Ls8/u;->O()V

    return-void
.end method

.method public static synthetic d(Ls8/u;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ls8/u;->N(Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ls8/u;->K(Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/dock/sidebar/j;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ls8/o;

    invoke-direct {v1, p0, p2, p3, p1}, Ls8/o;-><init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic f(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/u;->Q(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f0(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ls8/t;

    invoke-direct {v1, p0, p1, p2}, Ls8/t;-><init>(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic g(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/u;->M(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Lcom/miui/dock/sidebar/j;)V

    return-void
.end method

.method public static synthetic h(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/u;->L(Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Ls8/u;Ljava/lang/String;Ls8/u$d;ILs8/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ls8/u;->P(Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    return-void
.end method

.method static synthetic j(Ls8/u;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;
    .locals 0

    iget-object p0, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    return-object p0
.end method

.method static synthetic k(Ls8/u;Lcom/miui/gamebooster/customview/AddedRelativeLayout;)Lcom/miui/gamebooster/customview/AddedRelativeLayout;
    .locals 0

    iput-object p1, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    return-object p1
.end method

.method static synthetic l(Ls8/u;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Ls8/u;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic m(Ls8/u;)Z
    .locals 0

    invoke-direct {p0}, Ls8/u;->I()Z

    move-result p0

    return p0
.end method

.method static synthetic n(Ls8/u;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Ls8/u;->i:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic o(Ls8/u;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ls8/u;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic p(Ls8/u;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Ls8/u;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic q(Ls8/u;)Z
    .locals 0

    iget-boolean p0, p0, Ls8/u;->g:Z

    return p0
.end method

.method static synthetic r(Ls8/u;)Z
    .locals 0

    iget-boolean p0, p0, Ls8/u;->h:Z

    return p0
.end method

.method static synthetic s(Ls8/u;)Lcom/miui/gamebooster/model/ActiveNewModel;
    .locals 0

    iget-object p0, p0, Ls8/u;->j:Lcom/miui/gamebooster/model/ActiveNewModel;

    return-object p0
.end method

.method static synthetic t(Ls8/u;Lcom/miui/gamebooster/model/ActiveNewModel;)Lcom/miui/gamebooster/model/ActiveNewModel;
    .locals 0

    iput-object p1, p0, Ls8/u;->j:Lcom/miui/gamebooster/model/ActiveNewModel;

    return-object p1
.end method

.method static synthetic u(Ls8/u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ls8/u;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Ls8/u;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Ls8/u;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic w(Ls8/u;Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls8/u;->e0(Ljava/lang/String;Lcom/miui/gamebooster/model/ActiveNewModel;Ljava/lang/String;)V

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Ls8/u;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls8/u;->f:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls8/u;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls8/u;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public V()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Ls8/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Ls8/u;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/AddedRelativeLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls8/u;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls8/u;->d:Lcom/miui/gamebooster/customview/AddedRelativeLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ls8/u;->x()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "GameToastWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeToastView fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Ls8/u;->x()V

    throw v0
.end method

.method public W(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeWildModeToastView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameToastWindowManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Ls8/u;->a:Landroid/os/Handler;

    iget-object v1, p0, Ls8/u;->m:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Ls8/u;->e:Ll8/i;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls8/u;->e:Ll8/i;

    invoke-virtual {p1}, Ll8/i;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls8/u;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Ls8/u;->e:Ll8/i;

    invoke-interface {p1, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Ls8/u;->e:Ll8/i;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ll8/i;->setAdded(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Ls8/u;->e:Ll8/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeToastView fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public Y(Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Ls8/n;

    invoke-direct {v1, p0, p1, p2}, Ls8/n;-><init>(Ls8/u;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z()V
    .locals 4

    const-string v0, "GameToastWindowManager"

    const-string v1, "showWildModeToastView: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ls8/u;->a:Landroid/os/Handler;

    new-instance v1, Ls8/s;

    invoke-direct {v1, p0}, Ls8/s;-><init>(Ls8/u;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a0(Ljava/lang/String;Ls8/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ls8/u;->c0(Ljava/lang/String;Ls8/u$d;Ls8/h;)V

    return-void
.end method

.method public b0(Ljava/lang/String;Ls8/u$d;ILs8/h;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls8/u;->g:Z

    iput-boolean v0, p0, Ls8/u;->h:Z

    iget-object v0, p0, Ls8/u;->a:Landroid/os/Handler;

    new-instance v7, Ls8/m;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ls8/m;-><init>(Ls8/u;Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    sget-boolean p1, Lsl/a;->a:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x320

    :goto_0
    invoke-virtual {v0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c0(Ljava/lang/String;Ls8/u$d;Ls8/h;)V
    .locals 1

    const/16 v0, 0x9d8

    invoke-virtual {p0, p1, p2, v0, p3}, Ls8/u;->b0(Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    return-void
.end method

.method public d0(Ls8/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Ls8/u;->c0(Ljava/lang/String;Ls8/u$d;Ls8/h;)V

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls8/u;->y(Z)V

    return-void
.end method

.method public y(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls8/u;->g:Z

    iput-boolean p1, p0, Ls8/u;->h:Z

    invoke-direct {p0}, Ls8/u;->z()V

    return-void
.end method
