.class Ly5/i$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/i;->q(Landroid/content/Context;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly5/i;


# direct methods
.method constructor <init>(Ly5/i;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ly5/i$b;->a:Ly5/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Ly5/i$b;)V
    .locals 0

    invoke-direct {p0}, Ly5/i$b;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Ly5/i$b;->a:Ly5/i;

    sget-object v1, Lg8/a;->r:Lg8/a;

    invoke-virtual {v0, v1}, Ly5/i;->B(Lg8/a;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Ly5/i$b;->a:Ly5/i;

    invoke-static {p2}, Ly5/i;->f(Ly5/i;)Lh8/i;

    move-result-object p2

    invoke-virtual {p2}, Lh8/i;->l()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Ly5/i$b;->a:Ly5/i;

    invoke-static {p2}, Ly5/i;->f(Ly5/i;)Lh8/i;

    move-result-object p2

    invoke-virtual {p2}, Lh8/i;->l()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh8/h;

    invoke-virtual {p2}, Lh8/h;->j()Lg8/a;

    move-result-object p2

    sget-object v0, Lg8/a;->r:Lg8/a;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Ly5/i$b;->a:Ly5/i;

    invoke-static {p1}, Ly5/i;->g(Ly5/i;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Ly5/j;

    invoke-direct {p2, p0}, Ly5/j;-><init>(Ly5/i$b;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
