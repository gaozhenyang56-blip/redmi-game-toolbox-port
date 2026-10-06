.class Lrh/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrh/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrh/d;


# direct methods
.method constructor <init>(Lrh/d;)V
    .locals 0

    iput-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {p1}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {p1}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object p1

    iget-object p1, p1, Lrh/e;->n:Lph/a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {p1}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object p1

    iget-object p1, p1, Lrh/e;->n:Lph/a;

    invoke-interface {p1}, Lph/a;->keys()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {p1}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object p1

    iget-object p1, p1, Lrh/e;->n:Lph/a;

    invoke-interface {p1}, Lph/a;->keys()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {p1}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object p1

    iget-object p1, p1, Lrh/e;->n:Lph/a;

    invoke-interface {p1}, Lph/a;->keys()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "pkg_icon://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pkg_icon_xspace://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    iget-object v0, p0, Lrh/d$a;->a:Lrh/d;

    invoke-static {v0}, Lrh/d;->a(Lrh/d;)Lrh/e;

    move-result-object v0

    iget-object v0, v0, Lrh/e;->n:Lph/a;

    invoke-interface {v0, p2}, Lph/a;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
