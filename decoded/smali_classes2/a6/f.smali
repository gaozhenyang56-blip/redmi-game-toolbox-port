.class public La6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lc6/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Lq6/a;->b(Lq6/b;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0e0107

    return v0
.end method

.method public synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq6/a;->a(Lq6/b;Lq6/i;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lc6/h;

    invoke-virtual {p0, p1, p2}, La6/f;->f(Lc6/h;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lc6/h;I)Z
    .locals 0

    instance-of p1, p1, Lc6/g;

    return p1
.end method
