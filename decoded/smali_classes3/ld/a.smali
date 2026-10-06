.class public Lld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "pc_key_wired_charge_mode"

.field private static b:Ljava/lang/String; = "pc_key_wireless_charge_mode"

.field private static c:Ljava/lang/String; = "pc_key_wireless_charge_time_mode"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lld/a;->a:Ljava/lang/String;

    const-string v1, "WIRED_STANDARD"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lld/a;->b:Ljava/lang/String;

    const-string v1, "WIRELESS_STANDARD"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lld/a;->c:Ljava/lang/String;

    const-string v1, "WIRELESS_TIME_NIGHT"

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lld/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lld/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lld/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
