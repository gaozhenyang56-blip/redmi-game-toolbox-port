.class public Lw4/d;
.super Lq0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lq0/a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lq0/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public G()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected I()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-super {p0}, Lq0/a;->I()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lw4/d;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lq0/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lq0/c;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lq0/c;->f(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected s()V
    .locals 1

    iget-object v0, p0, Lw4/d;->p:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lw4/d;->f(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lq0/c;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw4/d;->p:Ljava/lang/Object;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lq0/c;->h()V

    :cond_2
    return-void
.end method

.method protected t()V
    .locals 0

    invoke-virtual {p0}, Lq0/c;->b()Z

    return-void
.end method
