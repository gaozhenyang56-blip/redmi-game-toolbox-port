.class Lcom/miui/gamebooster/customview/y$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y$e;->onRequestTrialResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/gamebooster/customview/y$e;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y$e;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iput p2, p0, Lcom/miui/gamebooster/customview/y$e$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/customview/y$e$a;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/y$e$a;->b(Ljava/util/Map;)V

    return-void
.end method

.method private synthetic b(Ljava/util/Map;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object p1, p1, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {p1}, Lcom/miui/gamebooster/customview/y;->d()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/s;->g()V

    iget v0, p0, Lcom/miui/gamebooster/customview/y$e$a;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, La8/o0;->C(J)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v3, v3, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v3}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "voice_experience_card_dialog_click"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "voice_experience_card_receive"

    invoke-static {v3, v0}, Lcom/miui/gamebooster/utils/a$n;->k(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v3, v3, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100046

    iget-object v6, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v6, v6, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v6}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v7, v7, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo8/i;->f(Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-static {}, Lr8/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/customview/s;->h()Lcom/miui/gamebooster/customview/s;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v1, v1, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    new-instance v3, Lcom/miui/gamebooster/customview/z;

    invoke-direct {v3, p0}, Lcom/miui/gamebooster/customview/z;-><init>(Lcom/miui/gamebooster/customview/y$e$a;)V

    invoke-virtual {v0, v1, v3}, Lcom/miui/gamebooster/customview/s;->p(Landroid/view/ViewGroup;Lcom/miui/gamebooster/customview/s$b;)V

    invoke-static {v2}, Lr8/b;->k(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v0, v0, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/y;->d()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lo8/i;->b()Lo8/i;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v3, v3, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100045

    iget-object v6, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v6, v6, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v6}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/gamebooster/customview/y$e$a;->b:Lcom/miui/gamebooster/customview/y$e;

    iget-object v7, v7, Lcom/miui/gamebooster/customview/y$e;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {v7}, Lcom/miui/gamebooster/customview/y;->l(Lcom/miui/gamebooster/customview/y;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo8/i;->f(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
