.class public Lvf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [J

    sput-object v1, Lvf/a;->a:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move v5, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    long-to-int v6, v3

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const-wide v8, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_2

    :cond_0
    const-wide/16 v8, 0x0

    :goto_2
    shr-long/2addr v3, v7

    xor-long/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lvf/a;->a:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
