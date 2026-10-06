.class public Lcom/xiaomi/mipush/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lpi/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected static a()Lpi/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/h;->b:Lpi/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lpi/a;)V
    .locals 0

    sput-object p1, Lcom/xiaomi/mipush/sdk/h;->b:Lpi/a;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/h;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/xiaomi/mipush/sdk/h;->b:Lpi/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sget-boolean v4, Lcom/xiaomi/mipush/sdk/h;->a:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    xor-int/2addr v1, v4

    new-instance v3, Lzi/m3;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {p0}, Lzi/n3;->f(Landroid/content/Context;)Lzi/n3;

    move-result-object v4

    :cond_3
    invoke-direct {v3, v0, v4}, Lzi/m3;-><init>(Lpi/a;Lpi/a;)V

    invoke-static {v3}, Lpi/c;->s(Lpi/a;)V

    return-void
.end method
