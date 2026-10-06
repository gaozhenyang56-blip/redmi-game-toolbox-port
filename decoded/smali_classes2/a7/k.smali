.class public La7/k;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La7/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, La8/g0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, La7/k;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, La8/m1;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, La8/m1;->c(Z)V

    :cond_1
    invoke-static {}, La8/m1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, La8/m1;->d(Z)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {}, La8/g0;->Q()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    invoke-static {}, La8/g0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, La7/k;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, La8/m1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v1}, La8/m1;->c(Z)V

    :cond_1
    invoke-static {}, La8/m1;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, La8/m1;->d(Z)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/k;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
