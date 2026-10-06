.class Lx4/k1$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4/k1;->n(Landroid/content/Context;Landroid/os/Handler;)V
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

    iput-object p2, p0, Lx4/k1$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lx4/k1$a;->a:Landroid/content/Context;

    invoke-static {p1}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lef/x;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/k1;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "input method change: "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lx4/k1$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lx4/k1;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "switch input method, close privacy input mode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iget-object p2, p0, Lx4/k1$a;->a:Landroid/content/Context;

    invoke-static {p2}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
