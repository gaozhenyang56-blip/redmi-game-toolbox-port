.class Lx4/k1$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4/k1;->m(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lx4/k1$b;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lx4/k1;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "privacy input mode change"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lx4/k1$b;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lx4/k1;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unrestricted OP_SYSTEM_ALERT_WINDOW as the privacy mode close"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lx4/k1$b;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lx4/k1;->p(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
