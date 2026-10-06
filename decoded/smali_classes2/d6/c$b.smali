.class public final Ld6/c$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld6/c;


# direct methods
.method constructor <init>(Ld6/c;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ld6/c$b;->a:Ld6/c;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Ld6/c$b;->a:Ld6/c;

    invoke-static {p1}, Ld6/c;->b(Ld6/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onState change."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ld6/c$b;->a:Ld6/c;

    invoke-static {p1}, Ld6/c;->d(Ld6/c;)Lak/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
