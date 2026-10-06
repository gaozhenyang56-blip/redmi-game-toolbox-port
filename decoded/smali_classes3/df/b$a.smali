.class Ldf/b$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldf/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldf/b;


# direct methods
.method constructor <init>(Ldf/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ldf/b$a;->a:Ldf/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Ldf/b$a;->a:Ldf/b;

    invoke-virtual {p1}, Ldf/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ldf/b$a;->a:Ldf/b;

    invoke-static {p1}, Ldf/b;->a(Ldf/b;)Ldf/b$b;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ldf/b$a;->a:Ldf/b;

    invoke-static {p1}, Ldf/b;->a(Ldf/b;)Ldf/b$b;

    move-result-object p1

    invoke-interface {p1}, Ldf/b$b;->a()V

    return-void
.end method
