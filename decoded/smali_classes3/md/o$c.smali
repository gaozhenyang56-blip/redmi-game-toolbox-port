.class public Lmd/o$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const-string p0, "reset"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "can_work"

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_2

    const-string p0, "working"

    return-object p0

    :cond_2
    const-string p0, "error"

    return-object p0
.end method
