.class public Lme/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A([I)Z
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0}, Lme/b;->n([I)I

    move-result v1

    aput v1, p0, v0

    invoke-static {p0}, Lme/j;->z([I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ui_soh"

    invoke-static {v0, p0}, Lme/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static B([I)Z
    .locals 2

    if-eqz p0, :cond_1

    array-length v0, p0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0}, Lme/b;->n([I)I

    move-result v1

    aput v1, p0, v0

    invoke-static {p0}, Lme/j;->z([I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ui_slave_soh"

    invoke-static {v0, p0}, Lme/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a()Z
    .locals 2

    const-string v0, "authentic"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b()Z
    .locals 2

    const-string v0, "slave_authentic"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c()I
    .locals 1

    const-string v0, "getBatteryIbat"

    invoke-static {v0}, Lme/j;->k(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "manufacturing_date"

    invoke-static {v0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()F
    .locals 1

    const-string v0, "fg1_design_capacity"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static f()F
    .locals 1

    const-string v0, "fg2_design_capacity"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public static g()I
    .locals 1

    const-string v0, "charge_counter"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    const-string v0, "battery_num"

    invoke-static {v0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    const-string v0, "first_usage_date"

    invoke-static {v0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "IMiChargeUtils"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "miui.util.IMiCharge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, p0, v1, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMiChargeStringValue method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v2, "getIMiChargeStringValue: "

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static k(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lme/j;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lme/b;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "IMiChargeUtils"

    const-string v2, "getIMiChargeStringValueToNumber: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "IMiChargeUtils"

    :try_start_0
    const-string v2, "miui.util.IMiCharge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getMiChargePath"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v2, v0, v3, v6, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMiChargePath path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",value:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "getMiChargePath: "

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private static m(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lme/b;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static n()I
    .locals 1

    const-string v0, "getChargingPowerMax"

    invoke-static {v0}, Lme/j;->k(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    const-string v0, "soh_sn"

    invoke-static {v0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "fg2_soh_sn"

    invoke-static {v0}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lme/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Z
    .locals 2

    const-string v0, "reverse_quick_charge"

    const-string v1, "1"

    invoke-static {v0, v1}, Lme/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static r()I
    .locals 1

    const-string v0, "fg1_cycle"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static s()I
    .locals 1

    const-string v0, "fg2_cycle"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static t()I
    .locals 1

    const-string v0, "fg1_soh"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static u()I
    .locals 1

    const-string v0, "fg2_soh"

    invoke-static {v0}, Lme/j;->m(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v()[I
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [I

    const-string v1, "ui_soh"

    invoke-static {v1}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lme/b;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    goto :goto_1

    :cond_0
    aput v2, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static w()[I
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [I

    const-string v1, "ui_slave_soh"

    invoke-static {v1}, Lme/j;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lme/b;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    goto :goto_1

    :cond_0
    aput v2, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static x(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-class v0, Ljava/lang/String;

    const-string v1, "IMiChargeUtils"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "miui.util.IMiCharge"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "setMiChargePath"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    const/4 v8, 0x1

    aput-object v0, v7, v8

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v8

    invoke-static {v3, v4, v5, v7, v0}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMiChargePath path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",res:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "setMiChargePath: "

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v4, p0, v3

    invoke-static {v4}, Lme/b;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv9/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static z([I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    aget v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
