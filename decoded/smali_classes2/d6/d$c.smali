.class public final Ld6/d$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld6/d;


# direct methods
.method constructor <init>(Ld6/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ld6/d$c;->a:Ld6/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {p1}, Ld6/d$b;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state change. new state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld6/d$c;->a:Ld6/d;

    invoke-static {v1}, Ld6/d;->f(Ld6/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ld6/d$c;->a:Ld6/d;

    invoke-static {p1}, Ld6/d;->h(Ld6/d;)Lak/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
