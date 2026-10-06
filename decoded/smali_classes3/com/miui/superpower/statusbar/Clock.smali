.class public Lcom/miui/superpower/statusbar/Clock;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/Clock$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/superpower/statusbar/Clock$b;

.field private b:Lwl/a;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/superpower/statusbar/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_0

    sget-object p3, Lef/y;->h0:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/Clock;->c:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/superpower/statusbar/Clock;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->b:Lwl/a;

    if-nez v0, :cond_0

    new-instance v0, Lwl/a;

    invoke-direct {v0}, Lwl/a;-><init>()V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->b:Lwl/a;

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->b:Lwl/a;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwl/a;->X(Ljava/util/TimeZone;)Lwl/a;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->b:Lwl/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lwl/a;->W(J)Lwl/a;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-static {v0}, Lcom/miui/superpower/statusbar/Clock$b;->d(Lcom/miui/superpower/statusbar/Clock$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->d:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->c:Ljava/lang/CharSequence;

    :goto_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/Clock;->b:Lwl/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lwl/a;->x(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/superpower/statusbar/Clock$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/superpower/statusbar/Clock$b;-><init>(Lcom/miui/superpower/statusbar/Clock$a;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    :cond_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/superpower/statusbar/Clock$b;->a(Lcom/miui/superpower/statusbar/Clock$b;Z)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    invoke-static {v0, p0}, Lcom/miui/superpower/statusbar/Clock$b;->b(Lcom/miui/superpower/statusbar/Clock$b;Lcom/miui/superpower/statusbar/Clock;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/Clock;->a:Lcom/miui/superpower/statusbar/Clock$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/miui/superpower/statusbar/Clock$b;->c(Lcom/miui/superpower/statusbar/Clock$b;Lcom/miui/superpower/statusbar/Clock;)V

    :cond_0
    return-void
.end method
