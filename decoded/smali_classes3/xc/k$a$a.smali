.class Lxc/k$a$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxc/k$a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lxc/k$a;


# direct methods
.method constructor <init>(Lxc/k$a;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lxc/k$a$a;->b:Lxc/k$a;

    iput-object p3, p0, Lxc/k$a$a;->a:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lxc/k$a$a;->a:Landroid/net/Uri;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lxc/k$a$a;->b:Lxc/k$a;

    invoke-static {p1}, Lxc/k$a;->c(Lxc/k$a;)V

    :cond_0
    return-void
.end method
