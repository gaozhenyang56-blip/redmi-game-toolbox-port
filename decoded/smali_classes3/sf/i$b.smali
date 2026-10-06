.class Lsf/i$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/i;
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
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lsf/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsf/i;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lsf/i$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsf/i$d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lsf/i$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    iget-object p1, p0, Lsf/i$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lsf/i$b;->a:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lsf/i$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsf/i;

    if-eqz p1, :cond_6

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lsf/i;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    invoke-static {}, Lsf/i;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lsf/i;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v2, v0, Lsf/i;->k:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsf/i$d;

    iget-boolean v1, v0, Lsf/i;->k:Z

    invoke-interface {p2, v1}, Lsf/i$d;->onAppManagerChange(Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lsf/i;->B:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x0

    iput-boolean p2, v0, Lsf/i;->j:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsf/i$d;

    iget-boolean v1, v0, Lsf/i;->j:Z

    invoke-interface {p2, v1}, Lsf/i$d;->onSecurityScanChange(Z)V

    goto :goto_1

    :cond_4
    sget-object v1, Lsf/i;->C:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iput-boolean v2, v0, Lsf/i;->j:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsf/i$d;

    iget-boolean v1, v0, Lsf/i;->j:Z

    invoke-interface {p2, v1}, Lsf/i$d;->onSecurityScanChange(Z)V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lef/x;->B(Landroid/content/Context;)Z

    move-result p2

    xor-int/2addr p2, v2

    iput-boolean p2, v0, Lsf/i;->d:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2}, Lef/x;->e(Landroid/content/Context;)J

    move-result-wide v1

    iput-wide v1, v0, Lsf/i;->e:J

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsf/i$d;

    iget-boolean v1, v0, Lsf/i;->d:Z

    iget-wide v2, v0, Lsf/i;->e:J

    invoke-interface {p2, v1, v2, v3}, Lsf/i$d;->onGarbageChange(ZJ)V

    goto :goto_4

    :cond_6
    :goto_5
    return-void
.end method
