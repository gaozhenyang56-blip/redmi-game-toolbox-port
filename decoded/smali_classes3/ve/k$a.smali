.class Lve/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lve/k;


# direct methods
.method constructor <init>(Lve/k;)V
    .locals 0

    iput-object p1, p0, Lve/k$a;->a:Lve/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lve/k$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/k$a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lve/k$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lve/k$a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lve/k$a;->a:Lve/k;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lve/k;->H(Lve/k;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lve/k$a;->a:Lve/k;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lve/k;->H(Lve/k;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lve/k$a;->a:Lve/k;

    invoke-static {v0}, Lve/k;->G(Lve/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lve/j;

    invoke-direct {v1, p0, p1}, Lve/j;-><init>(Lve/k$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lve/k$a;->a:Lve/k;

    invoke-static {v0}, Lve/k;->G(Lve/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lve/i;

    invoke-direct {v1, p0, p1}, Lve/i;-><init>(Lve/k$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
