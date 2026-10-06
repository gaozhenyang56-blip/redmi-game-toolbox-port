.class public Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/m0$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/o;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/o;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lzi/s8;)V
    .locals 8

    invoke-virtual {p1}, Lzi/s8;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzi/s8;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/mipush/sdk/o;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/m0$a;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lzi/s8;->g:Ljava/lang/String;

    iget-object v3, p1, Lzi/s8;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/mipush/sdk/m0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/m0;->h(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/m0$a;)V

    :cond_0
    const/4 p0, 0x0

    iget-object v0, p1, Lzi/s8;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lzi/s8;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v2, p0

    sget-object p0, Lzi/y4;->b:Lzi/y4;

    iget-object v1, p0, Lzi/y4;->a:Ljava/lang/String;

    iget-wide v3, p1, Lzi/s8;->e:J

    iget-object v5, p1, Lzi/s8;->f:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    return-void
.end method

.method public static b(Landroid/content/Context;Lzi/y8;)V
    .locals 7

    sget-object p0, Lzi/y4;->c:Lzi/y4;

    iget-object v0, p0, Lzi/y4;->a:Ljava/lang/String;

    iget-wide v2, p1, Lzi/y8;->e:J

    iget-object v4, p1, Lzi/y8;->f:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/r;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    invoke-virtual {p1}, Lzi/y8;->b()Ljava/lang/String;

    return-void
.end method
