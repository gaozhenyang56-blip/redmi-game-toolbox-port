.class public Ld8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TextView;

.field public c:Lmiuix/slidingwidget/widget/SlidingButton;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Ld8/b$a;->c()V

    return-void
.end method

.method private static synthetic c()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/GameBoxToastHelper;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lh8/b;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 5

    const/16 v0, 0x8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lh8/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lj8/p;->d()Z

    move-result v1

    iget-object v2, p0, Ld8/b$a;->a:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Ld8/b$a;->b:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lh8/b;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-nez v1, :cond_2

    move-object v1, p1

    check-cast v1, Lh8/a;

    invoke-virtual {v1}, Lh8/a;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Ld8/b$a;->d:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    iget-object v1, p0, Ld8/b$a;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lh8/a;

    invoke-virtual {v1}, Lh8/a;->i()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p0, Ld8/b$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lh8/a;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object p2, p0, Ld8/b$a;->g:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lh8/b;->a()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    invoke-static {}, Lj8/u;->z()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lj8/u;->p(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p2, :cond_6

    instance-of p2, p1, Lh8/a;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lh8/a;

    invoke-virtual {p2}, Lh8/a;->g()I

    move-result p2

    if-ne p2, v0, :cond_6

    iget-object p2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object p2, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    instance-of p2, p2, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    if-eqz p2, :cond_8

    instance-of p2, p1, Lh8/a;

    if-eqz p2, :cond_8

    check-cast p1, Lh8/a;

    invoke-virtual {p1}, Lh8/a;->g()I

    move-result p1

    invoke-static {}, Lj8/u;->z()Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    check-cast p1, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->setClickInterval(J)V

    iget-object p1, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    check-cast p1, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    new-instance p2, Ld8/a;

    invoke-direct {p2}, Ld8/a;-><init>()V

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->setOnDisableTouchListener(Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime$a;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Ld8/b$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    check-cast p1, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->setClickInterval(J)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    :goto_2
    iget-object p1, p0, Ld8/b$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
