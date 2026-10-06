.class public Lo8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo8/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo8/h;

    invoke-direct {v0, p0}, Lo8/h;-><init>(Lo8/i;)V

    iput-object v0, p0, Lo8/i;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lo8/i;)V
    .locals 0

    invoke-direct {p0}, Lo8/i;->d()V

    return-void
.end method

.method public static b()Lo8/i;
    .locals 1

    sget-object v0, Lo8/i$a;->a:Lo8/i;

    return-object v0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e02a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public e(Landroid/view/ViewGroup;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lo8/i;->c(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lo8/i;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lo8/i;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lo8/i;->c(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lo8/i;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lo8/i;->b:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lo8/i;->a:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
