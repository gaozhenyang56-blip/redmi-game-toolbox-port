.class Lcom/miui/securityscan/MainFragment$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->s1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(F)V
    .locals 7

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->F0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "slide_down"

    invoke-static {p1}, Lqf/c;->M(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->H0(Lcom/miui/securityscan/MainFragment;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->H0(Lcom/miui/securityscan/MainFragment;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Lqf/c;->k0(J)V

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/securityscan/MainFragment;->I0(Lcom/miui/securityscan/MainFragment;J)J

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/securityscan/MainFragment;->G0(Lcom/miui/securityscan/MainFragment;Z)Z

    goto :goto_1

    :cond_1
    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->F0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->H0(Lcom/miui/securityscan/MainFragment;)J

    move-result-wide v5

    cmp-long p1, v5, v3

    if-lez p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->H0(Lcom/miui/securityscan/MainFragment;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Lqf/c;->j0(J)V

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/miui/securityscan/MainFragment;->I0(Lcom/miui/securityscan/MainFragment;J)J

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 6

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->f0:Z

    const v2, 0x358637bd    # 1.0E-6f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-interface {v0, v5}, Lwf/a;->setActionButtonClickable(Z)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object v0

    if-gez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Lwf/a;->setContentMainClickable(Z)V

    :cond_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    iget-boolean v1, v0, Lcom/miui/securityscan/MainFragment;->R:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/miui/securityscan/MainFragment;->S:Lsf/d;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/miui/securityscan/MainFragment;->O1()I

    move-result v2

    invoke-virtual {v1, v2}, Lsf/d;->n(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/MainFragment;->X2(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    iput-boolean v3, v0, Lcom/miui/securityscan/MainFragment;->Q:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    iput-boolean v4, v0, Lcom/miui/securityscan/MainFragment;->Q:Z

    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/securityscan/MainFragment$w;->b(F)V

    const/high16 v0, -0x3fe00000    # -2.5f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1}, Lcom/miui/securityscan/MainFragment;->D0(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1}, Lcom/miui/securityscan/MainFragment;->D0(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1}, Lcom/miui/securityscan/MainFragment;->E0(Lcom/miui/securityscan/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr p1, v2

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$w;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h1(Lcom/miui/securityscan/MainFragment;)Lwf/a;

    move-result-object p1

    invoke-interface {p1, v0}, Lwf/a;->setContentFrameAlpha(F)V

    :cond_6
    return-void
.end method
