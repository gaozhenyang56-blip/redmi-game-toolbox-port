.class public Lmd/m;
.super Lnd/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "MODE_NO_PROTECT"

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lnd/a;->e()V

    const-string v0, "BaseChargeProtect_NoProtect"

    const-string v1, "openProtect NoProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 2

    invoke-super {p0}, Lnd/a;->f()V

    const-string v0, "BaseChargeProtect_NoProtect"

    const-string v1, "closeProtect NoProtectManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lnd/a;->g(Landroid/content/Context;Lmd/o$b;Lmd/p;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnd/a;->k(Z)V

    return-void
.end method
