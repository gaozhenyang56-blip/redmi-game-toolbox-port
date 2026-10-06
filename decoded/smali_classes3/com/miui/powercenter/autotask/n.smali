.class public Lcom/miui/powercenter/autotask/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/n$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Ljava/lang/Object;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 2

    invoke-static {p2}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const-string p0, "0"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const-string p0, "1"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-ne p0, v0, :cond_2

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p3, "gps"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-ne p0, v1, :cond_3

    const/4 p0, 0x3

    goto :goto_1

    :cond_3
    sget p0, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    :cond_4
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    if-eqz p4, :cond_7

    invoke-interface {p4, p2}, Lcom/miui/powercenter/autotask/n$c;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f03004c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    array-length p2, p0

    add-int/2addr p2, v1

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    array-length p0, p0

    const/4 v1, -0x1

    aput v1, p2, p0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget p0, p2, p0

    if-ne p0, v1, :cond_6

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    if-eqz p4, :cond_7

    invoke-interface {p4, v0}, Lcom/miui/powercenter/autotask/n$c;->a(Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const p1, 0x7f120634

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const p1, 0x7f120341

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100024

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f120336

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "internet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f12033e

    goto :goto_0

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f120349

    goto :goto_0

    :cond_2
    const-string v0, "mute"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f120340

    goto :goto_0

    :cond_3
    const-string v0, "vibration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f120348

    goto :goto_0

    :cond_4
    const-string v0, "bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f120338

    goto :goto_0

    :cond_5
    const-string v0, "auto_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f120337

    goto :goto_0

    :cond_6
    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f120339

    goto :goto_0

    :cond_7
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f12033c

    goto :goto_0

    :cond_8
    const-string v0, "synchronization"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p1, 0x7f120347

    goto :goto_0

    :cond_9
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const p1, 0x7f12033d

    goto :goto_0

    :cond_a
    const-string v0, "save_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p1, 0x7f12130e

    goto/16 :goto_0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown operation name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 3

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f0807d7

    return p0

    :cond_0
    const-string v0, "internet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f080882

    return p0

    :cond_1
    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x7f08091c

    return p0

    :cond_2
    const-string v0, "mute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0x7f080888

    return p0

    :cond_3
    const-string v0, "vibration"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p0, 0x7f080909

    return p0

    :cond_4
    const-string v0, "bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p0, 0x7f0807f3

    return p0

    :cond_5
    const-string v0, "auto_brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const p0, 0x7f0807e7

    return p0

    :cond_6
    const-string v0, "brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const p0, 0x7f0807f4

    return p0

    :cond_7
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x7f08085b

    return p0

    :cond_8
    const-string v0, "synchronization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x7f0808fc

    return p0

    :cond_9
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const p0, 0x7f080880

    return p0

    :cond_a
    const-string v0, "save_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const p0, 0x7f0807ef

    return p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown icon "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wifi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vibration"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bluetooth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "auto_brightness"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "synchronization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "internet"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "save_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lmiuix/preference/DropDownPreference;)V
    .locals 5

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p2}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 p1, 0x3

    const/4 v1, 0x2

    if-nez v0, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    const-string v4, "gps"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_1

    :goto_0
    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_1

    goto :goto_0

    :goto_1
    new-array p1, p1, [Ljava/lang/String;

    const v0, 0x7f120342

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    const v0, 0x7f12033a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    const v0, 0x7f120341

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "0"

    const-string v0, "1"

    const-string v1, "2"

    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p0}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p2}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_5

    :cond_3
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f03004c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    array-length v1, p2

    add-int/2addr v1, v3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    array-length p2, p2

    const/4 v3, -0x1

    aput v3, v1, p2

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->hasOperation(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_4
    move p1, v2

    :goto_2
    array-length p2, v1

    if-ge p1, p2, :cond_6

    aget p2, v1, p1

    if-ne p2, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    move p1, v2

    :goto_3
    array-length p2, v1

    new-array v0, p2, [Ljava/lang/String;

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    :goto_4
    if-ge v2, p2, :cond_7

    aget v4, v1, v2

    invoke-static {p0, v4}, Lcom/miui/powercenter/autotask/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p3, v0}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    invoke-virtual {p3, v3}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    invoke-virtual {p3, p1}, Lmiuix/preference/DropDownPreference;->E(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/autotask/j;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/autotask/j;-><init>(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)V

    invoke-virtual {v0, p2}, Lcom/miui/powercenter/autotask/j;->c(Lcom/miui/powercenter/autotask/n$c;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    array-length v0, v0

    const/4 v2, -0x1

    aput v2, v1, v0

    const-string v0, "auto_clean_memory"

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->hasOperation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget v4, v1, v3

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_1
    array-length v2, v1

    new-array v4, v2, [Ljava/lang/String;

    :goto_2
    if-ge v0, v2, :cond_3

    aget v5, v1, v0

    invoke-static {p0, v5}, Lcom/miui/powercenter/autotask/n;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120633

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/powercenter/autotask/n$b;

    invoke-direct {v2, v1, p1, p2}, Lcom/miui/powercenter/autotask/n$b;-><init>([ILcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/n$c;)V

    invoke-virtual {v0, v4, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120499

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method public static i(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V
    .locals 6

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    const-string v5, "gps"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v5, :cond_2

    if-ne v0, v1, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_1

    goto :goto_0

    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    const v5, 0x7f120342

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const v3, 0x7f12033a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f120341

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, p2}, Lcom/miui/powercenter/autotask/n;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/powercenter/autotask/n$a;

    invoke-direct {v3, v0, p1, p2, p3}, Lcom/miui/powercenter/autotask/n$a;-><init>(ILcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Lcom/miui/powercenter/autotask/n$c;)V

    invoke-static {p0, v2, v1, v0, v3}, Lcom/miui/powercenter/autotask/a;->c(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public static j(Lmiuix/preference/TextPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "gps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v0, 0x7f12033a

    const v1, 0x7f120342

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p2, :cond_1

    sget p2, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lmiuix/preference/TextPreference;->setText(I)V

    goto :goto_3

    :cond_3
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    const p1, 0x7f120634

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100024

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string v0, "brightness"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    check-cast p1, Ljava/lang/Integer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static k(Lmiuix/preference/DropDownPreference;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/autotask/AutoTask;->getOperation(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/miui/powercenter/autotask/n;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    const-string v0, "gps"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p2, :cond_1

    sget p2, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lmiuix/preference/DropDownPreference;->E(I)V

    goto :goto_2

    :cond_3
    const-string v0, "auto_clean_memory"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    const p1, 0x7f120634

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100024

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
