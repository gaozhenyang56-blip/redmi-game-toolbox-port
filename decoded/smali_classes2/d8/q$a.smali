.class public Ld8/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TextView;

.field public c:Lmiuix/slidingwidget/widget/SlidingButton;

.field public d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh8/b;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 3

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lh8/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld8/q$a;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ld8/q$a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lh8/b;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Ld8/q$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Ld8/q$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Li8/c;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p2, p0, Ld8/q$a;->c:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    iget-object p2, p0, Ld8/q$a;->d:Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/gamebooster/videobox/view/VideoEffectImageView;->q()V

    :cond_4
    iget-object p2, p0, Ld8/q$a;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lh8/b;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    iget-object p1, p0, Ld8/q$a;->a:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
