.class public Lzi/oa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Z

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lzi/d;->a:Z

    const-string v1, "ONEBOX"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    :goto_0
    sput-object v0, Lzi/oa;->a:Ljava/lang/String;

    const/4 v2, 0x0

    sput-boolean v2, Lzi/oa;->b:Z

    const/4 v2, 0x1

    sput v2, Lzi/oa;->c:I

    const-string v3, "SANDBOX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x2

    :goto_1
    sput v0, Lzi/oa;->c:I

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    sput v2, Lzi/oa;->c:I

    :goto_2
    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lzi/oa;->c:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lzi/oa;->c:I

    return-void
.end method

.method public static c()Z
    .locals 2

    sget v0, Lzi/oa;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 2

    sget v0, Lzi/oa;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
