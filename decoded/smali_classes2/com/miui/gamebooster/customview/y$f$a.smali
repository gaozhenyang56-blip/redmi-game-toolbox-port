.class Lcom/miui/gamebooster/customview/y$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y$f;->onRequestTrialResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/customview/y$f;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y$f;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iput p2, p0, Lcom/miui/gamebooster/customview/y$f$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/s;->g()V

    iget v0, p0, Lcom/miui/gamebooster/customview/y$f$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, La8/o0;->C(J)V

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v3, v3, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100046

    iget-object v6, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v6, v6, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v6}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v7, v7, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo8/i;->f(Landroid/view/ViewGroup;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v0, v0, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/y;->d()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v3, v3, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100045

    iget-object v6, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v6, v6, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v6}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/customview/y$f$a;->b:Lcom/miui/gamebooster/customview/y$f;

    iget-object v7, v7, Lcom/miui/gamebooster/customview/y$f;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo8/i;->f(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
