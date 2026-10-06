.class public Ld8/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

.field public e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

.field public f:Lmiuix/slidingwidget/widget/SlidingButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ld8/l$a;Ld8/l;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld8/l$a;->e(Ld8/l;Z)V

    return-void
.end method

.method public static synthetic b(Ld8/l;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ld8/l$a;->g(Ld8/l;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c(Ld8/l;)V
    .locals 0

    invoke-static {p0}, Ld8/l$a;->f(Ld8/l;)V

    return-void
.end method

.method private synthetic e(Ld8/l;Z)V
    .locals 1

    iget-object v0, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {p1}, Ld8/l;->c(Ld8/l;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private static synthetic f(Ld8/l;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private static synthetic g(Ld8/l;Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lh8/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/g;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lh8/g;->k()I

    move-result p2

    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    invoke-static {}, Lj8/p;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lh8/g;->r()V

    :cond_1
    new-instance p2, Ld8/k;

    invoke-direct {p2, p0}, Ld8/k;-><init>(Ld8/l;)V

    invoke-virtual {v0, p1, p2}, Lh8/g;->q(Landroid/view/View;Lh8/g$b;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "SrsSettingsAdapter"

    const-string p1, "Model can not be null and must be instance of SrsSettingsModel"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public d(Lh8/b;Lk8/b;Ld8/l;)V
    .locals 7

    const/16 v0, 0x8

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lh8/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Lj8/p;->d()Z

    move-result v1

    iget-object v2, p0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x7

    if-eqz v2, :cond_9

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p1

    check-cast v2, Lh8/g;

    invoke-virtual {v2}, Lh8/g;->k()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_3

    iget-object v0, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    invoke-static {}, Lj8/m;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f121b52

    goto :goto_0

    :cond_2
    const v2, 0x7f121b51

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lh8/g;->k()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_5

    iget-object v0, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    invoke-static {}, Lj8/m;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f121b5d

    goto :goto_0

    :cond_4
    const v2, 0x7f121b5c

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lh8/g;->k()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    iget-object v0, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    const v2, 0x7f121b74

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lh8/g;->k()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    move v0, v3

    goto :goto_1

    :cond_7
    iget-object v2, p0, Ld8/l$a;->c:Landroid/widget/TextView;

    :cond_8
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_2
    iget-object v0, p0, Ld8/l$a;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lh8/g;

    invoke-virtual {v0}, Lh8/g;->l()I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Ld8/l$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lh8/g;->l()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lh8/g;

    invoke-virtual {v0}, Lh8/g;->k()I

    move-result v0

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-static {p3}, Ld8/l;->c(Ld8/l;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lj8/k;->h()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_3

    :cond_b
    move v5, v3

    goto :goto_3

    :cond_c
    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-static {p3}, Ld8/l;->c(Ld8/l;)Z

    move-result v5

    xor-int/2addr v5, v2

    :goto_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->setLevelChangeListener(Lk8/b;)V

    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    if-eqz v1, :cond_d

    move v5, v3

    goto :goto_4

    :cond_d
    move-object v5, p1

    check-cast v5, Lh8/g;

    invoke-virtual {v5}, Lh8/g;->n()I

    move-result v5

    :goto_4
    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;->setCurrentLevel(I)V

    iget-object v0, p0, Ld8/l$a;->e:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBarPro;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lh8/g;

    invoke-virtual {v0}, Lh8/g;->k()I

    move-result v0

    if-ne v0, v4, :cond_10

    iget-object v0, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    invoke-static {p3}, Ld8/l;->c(Ld8/l;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lj8/k;->h()Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v2

    goto :goto_5

    :cond_f
    move v4, v3

    goto :goto_5

    :cond_10
    iget-object v0, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    invoke-static {p3}, Ld8/l;->c(Ld8/l;)Z

    move-result v4

    xor-int/2addr v4, v2

    :goto_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    invoke-virtual {v0, p2}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->setLevelChangeListener(Lk8/b;)V

    iget-object p2, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    if-eqz v1, :cond_11

    move v0, v3

    goto :goto_6

    :cond_11
    move-object v0, p1

    check-cast v0, Lh8/g;

    invoke-virtual {v0}, Lh8/g;->n()I

    move-result v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->setCurrentLevel(I)V

    iget-object p2, p0, Ld8/l$a;->d:Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;

    invoke-virtual {p2, p1}, Lcom/miui/gamebooster/videobox/view/SrsLevelSeekBar;->setTag(Ljava/lang/Object;)V

    :cond_12
    iget-object p2, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p2, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object p2, p1

    check-cast p2, Lh8/g;

    iget-object v0, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lh8/g;->k()I

    move-result v4

    invoke-static {v0, v4}, Lj8/d;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ld8/i;

    invoke-direct {v0, p0, p3}, Ld8/i;-><init>(Ld8/l$a;Ld8/l;)V

    invoke-virtual {p2, v0}, Lh8/g;->i(Lh8/g$a;)V

    :cond_13
    iget-object v0, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    if-nez v1, :cond_14

    invoke-virtual {p2}, Lh8/g;->o()Z

    move-result p2

    if-eqz p2, :cond_14

    move v3, v2

    :cond_14
    invoke-virtual {v0, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v0, Ld8/j;

    invoke-direct {v0, p3}, Ld8/j;-><init>(Ld8/l;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Ld8/l$a;->f:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_15
    return-void

    :cond_16
    :goto_7
    iget-object p1, p0, Ld8/l$a;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method
