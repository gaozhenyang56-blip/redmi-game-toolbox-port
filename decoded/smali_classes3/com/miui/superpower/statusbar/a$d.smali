.class public final Lcom/miui/superpower/statusbar/a$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static b:Lcom/miui/superpower/statusbar/a$d;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/superpower/statusbar/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/superpower/statusbar/a$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$d;
    .locals 0

    invoke-static {p0}, Lcom/miui/superpower/statusbar/a$d;->b(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$d;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$d;
    .locals 2

    sget-object v0, Lcom/miui/superpower/statusbar/a$d;->b:Lcom/miui/superpower/statusbar/a$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/superpower/statusbar/a$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/miui/superpower/statusbar/a$d;-><init>(Landroid/os/Looper;Lcom/miui/superpower/statusbar/a;)V

    sput-object v0, Lcom/miui/superpower/statusbar/a$d;->b:Lcom/miui/superpower/statusbar/a$d;

    :cond_0
    sget-object p0, Lcom/miui/superpower/statusbar/a$d;->b:Lcom/miui/superpower/statusbar/a$d;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/superpower/statusbar/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->c(Lcom/miui/superpower/statusbar/a;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->d(Lcom/miui/superpower/statusbar/a;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->c(Lcom/miui/superpower/statusbar/a;)Landroid/view/View;

    move-result-object p1

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->e(Lcom/miui/superpower/statusbar/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->o(Lcom/miui/superpower/statusbar/a;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->q(Lcom/miui/superpower/statusbar/a;)V

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->l(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$e;

    move-result-object p1

    invoke-virtual {p1}, Lmg/a;->b()V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->k(Lcom/miui/superpower/statusbar/a;)V

    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->l(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$e;

    move-result-object p1

    invoke-virtual {p1}, Lmg/a;->a()Landroid/content/Intent;

    invoke-static {v0, v2}, Lcom/miui/superpower/statusbar/a;->n(Lcom/miui/superpower/statusbar/a;Z)Z

    invoke-static {v0, v2}, Lcom/miui/superpower/statusbar/a;->p(Lcom/miui/superpower/statusbar/a;Z)Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/miui/superpower/statusbar/a;->r(Lcom/miui/superpower/statusbar/a;)V

    :cond_6
    :goto_1
    return-void
.end method
