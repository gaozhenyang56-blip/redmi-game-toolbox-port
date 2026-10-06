.class public Lud/m;
.super Lud/c;
.source "SourceFile"


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lud/c;-><init>()V

    iput-object p1, p0, Lud/m;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public H()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lud/c;->t(Z)I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    invoke-static {}, Lme/j;->a()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    invoke-static {}, Lme/j;->r()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    invoke-static {}, Lme/j;->t()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Lud/m;->H()I

    move-result v0

    return v0
.end method

.method public o()[I
    .locals 1

    invoke-static {}, Lme/j;->v()[I

    move-result-object v0

    return-object v0
.end method

.method protected v()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lud/m;->e:Landroid/content/Context;

    return-object v0
.end method
