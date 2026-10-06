.class public Lcom/miui/gamebooster/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/model/a;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/miui/gamebooster/model/a;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/gamebooster/model/b;->a(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/model/a;->b(Lcom/miui/gamebooster/model/b;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/miui/gamebooster/model/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/model/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/a;
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/model/a;

    invoke-direct {v0}, Lcom/miui/gamebooster/model/a;-><init>()V

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/miui/gamebooster/model/a;->a(Lorg/json/JSONObject;Lcom/miui/gamebooster/model/a;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Leg/j$b;->b:Leg/j$b;

    new-instance v1, Lp4/i;

    const-string v2, "gamebooster_appinfodatamodel_post"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://adv.sec.miui.com/game/upgrade/pkginfo"

    const-string v3, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    invoke-static {p0, v2, v0, v3, v1}, Leg/j;->B(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/model/a;->a:Ljava/util/List;

    return-object v0
.end method
