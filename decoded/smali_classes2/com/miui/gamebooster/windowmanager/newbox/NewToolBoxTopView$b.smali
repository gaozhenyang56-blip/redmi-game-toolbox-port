.class Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->b:Z

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->k(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->b:Z

    if-eqz v1, :cond_2

    invoke-static {}, La8/e0;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->r(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-static {}, La8/a2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->j(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->l(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I

    move-result v1

    invoke-static {}, La8/w;->a()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    if-gtz v2, :cond_3

    :try_start_0
    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->t(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->m()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use last fps : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->m()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parse fpsParameter to Int fail!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_4

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->n(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->u(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->x(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->A(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;I)I

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->z(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_6

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->z(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->A(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;I)I

    :cond_6
    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView$b;->c:Landroid/os/Handler;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;->o(Lcom/miui/gamebooster/windowmanager/newbox/NewToolBoxTopView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method
