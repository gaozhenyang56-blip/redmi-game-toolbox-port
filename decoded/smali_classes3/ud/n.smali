.class public Lud/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(II)[I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [I

    div-int/lit8 v1, p0, 0x64

    rsub-int/lit8 v1, v1, 0x65

    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    add-int/lit8 p0, p0, -0x18

    invoke-static {v0, p0}, Lme/b;->N([II)V

    const/4 p0, 0x3

    const/4 v1, 0x2

    aput v1, v0, p0

    aget p0, v0, v2

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    const/16 p0, 0x8

    aput p1, v0, p0

    const/16 p0, 0x9

    aput p1, v0, p0

    return-object v0
.end method

.method public static b()[I
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v3, 0x3

    aput v1, v0, v3

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    return-object v0
.end method
