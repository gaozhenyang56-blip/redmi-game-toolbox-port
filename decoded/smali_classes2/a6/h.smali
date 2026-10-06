.class public La6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lc6/h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/h;->a:Lb6/b;

    return-void
.end method

.method public static synthetic f(La6/h;Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La6/h;->i(Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic i(Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p1, p4}, Lc6/h;->i(Z)V

    iget-object p3, p0, La6/h;->a:Lb6/b;

    if-eqz p3, :cond_0

    const/4 p4, -0x1

    invoke-interface {p3, p1, p2, p4}, Lb6/b;->e(Lc6/a;Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0105

    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lc6/h;

    invoke-virtual {p0, p1, p2, p3}, La6/h;->g(Lq6/i;Lc6/h;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lc6/h;

    invoke-virtual {p0, p1, p2}, La6/h;->h(Lc6/h;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public g(Lq6/i;Lc6/h;I)V
    .locals 1

    const p3, 0x7f0b0cf3

    invoke-virtual {p1, p3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lc6/h;->e()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0b0c59

    invoke-virtual {p1, p3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p2}, Lc6/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b047b

    invoke-virtual {p1, p3}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2}, Lc6/h;->b()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p2}, Lc6/h;->f()Z

    move-result p3

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p3, La6/g;

    invoke-direct {p3, p0, p2, p1}, La6/g;-><init>(La6/h;Lc6/h;Lmiuix/slidingwidget/widget/SlidingButton;)V

    invoke-virtual {p1, p3}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public h(Lc6/h;I)Z
    .locals 0

    instance-of p2, p1, Lc6/i;

    if-nez p2, :cond_1

    instance-of p1, p1, Lc6/f;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
