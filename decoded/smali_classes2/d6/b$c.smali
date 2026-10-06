.class public final Ld6/b$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld6/b;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld6/b;


# direct methods
.method constructor <init>(Ld6/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ld6/b$c;->a:Ld6/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Ld6/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onChange "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ld6/b$c;->a:Ld6/b;

    invoke-static {p1}, Ld6/b;->f(Ld6/b;)Lak/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lak/a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
