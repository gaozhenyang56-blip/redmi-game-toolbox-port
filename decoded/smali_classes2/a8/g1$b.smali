.class La8/g1$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/g1;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La8/g1;


# direct methods
.method constructor <init>(La8/g1;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, La8/g1$b;->a:La8/g1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, La8/g1$b;->a:La8/g1;

    invoke-static {p1}, La8/g1;->f(La8/g1;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, La8/g1$b;->a:La8/g1;

    invoke-static {p1}, La8/g1;->a(La8/g1;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La8/g1$b;->a:La8/g1;

    invoke-static {p1}, La8/g1;->e(La8/g1;)V

    :cond_0
    return-void
.end method
