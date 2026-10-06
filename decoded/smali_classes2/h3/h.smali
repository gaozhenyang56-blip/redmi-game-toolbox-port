.class public Lh3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh3/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lh3/h;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lh3/f;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lh3/h;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Lorg/json/JSONObject;)Lh3/h;
    .locals 5

    sget-object v0, Lh3/h;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lh3/h;

    invoke-direct {v0}, Lh3/h;-><init>()V

    const-string v1, "channel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh3/h;->a:Ljava/lang/String;

    const-string v1, "dataVersion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh3/h;->b:Ljava/lang/String;

    const-string v1, "layoutId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh3/h;->c:Ljava/lang/String;

    const-string v1, "tn"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh3/h;->d:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lh3/h;->g:I

    const-string v1, "forceRefresh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lh3/h;->f:Z

    const-string v1, "layoutFormat"

    const-string v2, "1,0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh3/h;->e:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0}, Lbl/i;->f(Landroid/content/Context;)I

    move-result p0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lh3/h;->e:Ljava/lang/String;

    invoke-static {v3, v2, v4, p0}, Lh3/h;->d(Lh3/c;Lorg/json/JSONObject;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static d(Lh3/c;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "rowType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "001"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0, p1, p3}, Lh3/b;->A(ILorg/json/JSONObject;I)Lh3/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lh3/b;->M:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lh3/h;->a(Lh3/f;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lh3/c;->j(Lh3/f;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "card"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "list"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    new-instance v0, Lh3/c;

    invoke-direct {v0, p1}, Lh3/c;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lh3/h;->a(Lh3/f;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lh3/h;->d(Lh3/c;Lorg/json/JSONObject;Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "channel"

    if-eqz v0, :cond_1

    const-string v0, "02-15"

    goto :goto_0

    :cond_1
    const-string v0, "01-15"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landingPageUrlType"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/a0;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ua"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le3/d;

    invoke-direct {v0, p0}, Le3/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Le3/d;->d()Z

    move-result p0

    invoke-static {}, Lpf/g;->v()Z

    move-result v0

    invoke-static {}, Lpf/g;->w()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "setting"

    if-eqz p0, :cond_4

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string p0, "3"

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "2"

    :goto_2
    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string p0, "up"

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lp4/i;

    const-string v0, "appmanager_amdatamodel"

    invoke-direct {p0, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/info/layout"

    invoke-static {p1, v0, p0}, Lxe/a;->e(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lh3/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lh3/h;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
