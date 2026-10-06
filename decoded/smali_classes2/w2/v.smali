.class public Lw2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Lo2/g$l;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    sget-object p0, Lo2/g$l;->a:Lo2/g$l;

    return-object p0

    :cond_0
    sget-object p0, Lo2/g$l;->d:Lo2/g$l;

    return-object p0

    :cond_1
    sget-object p0, Lo2/g$l;->b:Lo2/g$l;

    return-object p0

    :cond_2
    sget-object p0, Lo2/g$l;->c:Lo2/g$l;

    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "RISK"

    return-object p0

    :cond_1
    const-string p0, "MAYBE_VIRUS"

    return-object p0

    :cond_2
    const-string p0, "VIRUS"

    return-object p0
.end method
