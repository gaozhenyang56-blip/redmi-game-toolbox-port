.class Lc9/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc9/d;


# direct methods
.method constructor <init>(Lc9/d;)V
    .locals 0

    iput-object p1, p0, Lc9/d$a;->a:Lc9/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lc9/d$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc9/d$a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lc9/d$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc9/d$a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc9/d$a;->a:Lc9/d;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lc9/d;->c(Lc9/d;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc9/d$a;->a:Lc9/d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lc9/d;->c(Lc9/d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lc9/d$a;->a:Lc9/d;

    invoke-static {v0}, Lc9/d;->b(Lc9/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc9/c;

    invoke-direct {v1, p0, p1}, Lc9/c;-><init>(Lc9/d$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lc9/d$a;->a:Lc9/d;

    invoke-static {v0}, Lc9/d;->b(Lc9/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc9/b;

    invoke-direct {v1, p0, p1}, Lc9/b;-><init>(Lc9/d$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
