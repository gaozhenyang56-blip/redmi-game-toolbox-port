.class public final synthetic Lkn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/os/IHwBinder;)Lkn/b;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lkn/b;

    if-eqz v3, :cond_1

    check-cast v2, Lkn/b;

    return-object v2

    :cond_1
    new-instance v2, Lkn/b$a;

    invoke-direct {v2, p0}, Lkn/b$a;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lkn/b;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Lkn/b;
    .locals 1

    const-string v0, "vendor.xiaomi.hardware.misys@2.0::IMiSys"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lkn/a;->a(Landroid/os/IHwBinder;)Lkn/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Z)Lkn/b;
    .locals 1

    const-string v0, "default"

    invoke-static {v0, p0}, Lkn/a;->b(Ljava/lang/String;Z)Lkn/b;

    move-result-object p0

    return-object p0
.end method
