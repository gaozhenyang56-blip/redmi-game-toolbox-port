.class Lvd/b$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/b;


# direct methods
.method constructor <init>(Lvd/b;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lvd/b$b;->a:Lvd/b;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lvd/b$b;->a:Lvd/b;

    invoke-static {p1}, Lvd/b;->c(Lvd/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvd/b$b;->a:Lvd/b;

    invoke-static {p1}, Lvd/b;->d(Lvd/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lvd/b$b;->a:Lvd/b;

    invoke-static {p1}, Lvd/b;->e(Lvd/b;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lvd/b$b;->a:Lvd/b;

    invoke-static {p1}, Lvd/b;->f(Lvd/b;)V

    :cond_0
    return-void
.end method
