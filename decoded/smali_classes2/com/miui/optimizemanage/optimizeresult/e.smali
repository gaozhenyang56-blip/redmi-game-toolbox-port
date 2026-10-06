.class public Lcom/miui/optimizemanage/optimizeresult/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static l:Ljava/lang/Object;

.field public static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/optimizeresult/e;->l:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/optimizeresult/e;->m:Ljava/util/List;

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/l;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/e;
    .locals 9

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/e;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/e;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/e;-><init>()V

    iget-object v2, v1, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/miui/optimizemanage/optimizeresult/e;->e:I

    const-string v3, "isOverseaChannel"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->h:Z

    const-string v3, "lang"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->i:Ljava/lang/String;

    const-string v3, "channel"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->a:Ljava/lang/String;

    const-string v3, "dataVersion"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->b:Ljava/lang/String;

    const-string v3, "layoutId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->c:Ljava/lang/String;

    const-string v3, "tn"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->d:Ljava/lang/String;

    const-string v3, "status"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->f:I

    const-string v3, "forceRefresh"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->g:Z

    const-string v3, "request_mode"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->j:Ljava/lang/String;

    const-string v3, "data"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/miui/optimizemanage/optimizeresult/e;->l(Lcom/miui/optimizemanage/optimizeresult/e;Lcom/miui/optimizemanage/optimizeresult/i;Lorg/json/JSONObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_1
    iget-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p0, v3, :cond_5

    iget-object v3, v1, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v4, v3, Lcom/miui/optimizemanage/optimizeresult/i;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/miui/optimizemanage/optimizeresult/i;

    invoke-virtual {v3}, Lcom/miui/optimizemanage/optimizeresult/i;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v7, v6, Lcom/miui/optimizemanage/optimizeresult/h;

    if-eqz v7, :cond_3

    check-cast v6, Lcom/miui/optimizemanage/optimizeresult/h;

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    invoke-virtual {v6, v7}, Lcom/miui/optimizemanage/optimizeresult/h;->k(Z)V

    :goto_3
    invoke-virtual {v6, v7}, Lcom/miui/optimizemanage/optimizeresult/h;->i(Z)V

    goto :goto_4

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v6, v7}, Lcom/miui/optimizemanage/optimizeresult/h;->k(Z)V

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljb/c;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lcom/miui/optimizemanage/optimizeresult/e;->j(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v2, 0x7f12059e

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/f;

    const v3, 0x7f121a3b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f1219f5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "assets://img/ziqidongguanli.png"

    const-string v8, "miui.intent.action.OP_AUTO_START"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/miui/optimizemanage/optimizeresult/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/f;

    const v3, 0x7f120fa2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f1219f4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "assets://img/xiezai.png"

    const-string v8, "miui.intent.action.GARBAGE_UNINSTALL_APPS"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/miui/optimizemanage/optimizeresult/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {v1}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/optimizemanage/optimizeresult/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc4/j;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v2, 0x7f12008b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120536

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120537

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "miui.intent.action.GARBAGE_CLEANUP"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/miui/optimizemanage/optimizeresult/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {p0}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/util/List;)Lcom/miui/optimizemanage/optimizeresult/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljb/a;",
            ">;)",
            "Lcom/miui/optimizemanage/optimizeresult/k;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/k;

    invoke-direct {v0}, Lcom/miui/optimizemanage/optimizeresult/k;-><init>()V

    const v1, 0x7f120f51

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/k;->j(Ljava/lang/String;)V

    const v1, 0x7f120450

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/k;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lcom/miui/optimizemanage/optimizeresult/k;->k(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method private static l(Lcom/miui/optimizemanage/optimizeresult/e;Lcom/miui/optimizemanage/optimizeresult/i;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "rowType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v2, "001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->d()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/optimizeresult/e;->n(I)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->d()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "1.306.1.8"

    goto :goto_0

    :cond_1
    const-string v0, "1.306.1.7"

    :goto_0
    new-instance v1, Lcom/miui/international/bean/OptimizeGlobalAdBean;

    invoke-direct {v1, v0, p2}, Lcom/miui/international/bean/OptimizeGlobalAdBean;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Lcom/miui/optimizemanage/optimizeresult/i;->a(Lcom/miui/optimizemanage/optimizeresult/c;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {v1, p2}, Lcom/miui/optimizemanage/optimizeresult/b;->s(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_9

    :goto_1
    invoke-virtual {p1, p2}, Lcom/miui/optimizemanage/optimizeresult/i;->a(Lcom/miui/optimizemanage/optimizeresult/c;)V

    goto/16 :goto_3

    :cond_4
    const-string v2, "002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, p2}, Lcom/miui/optimizemanage/optimizeresult/f;->q(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/f;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_5
    const-string v2, "003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, p2}, Lcom/miui/optimizemanage/optimizeresult/a;->v(ILorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/a;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_6
    const-string v1, "004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/h;

    invoke-direct {v0, p2}, Lcom/miui/optimizemanage/optimizeresult/h;-><init>(Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    invoke-virtual {p1, v0}, Lcom/miui/optimizemanage/optimizeresult/i;->a(Lcom/miui/optimizemanage/optimizeresult/c;)V

    goto :goto_3

    :cond_7
    const-string p1, "005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    new-instance p1, Lcom/miui/optimizemanage/optimizeresult/g;

    invoke-direct {p1}, Lcom/miui/optimizemanage/optimizeresult/g;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string p1, "card"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "list"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Lcom/miui/optimizemanage/optimizeresult/i;

    invoke-direct {v0, p2}, Lcom/miui/optimizemanage/optimizeresult/i;-><init>(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_9

    iget-object p2, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_9

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/optimizemanage/optimizeresult/e;->l(Lcom/miui/optimizemanage/optimizeresult/e;Lcom/miui/optimizemanage/optimizeresult/i;Lorg/json/JSONObject;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v0, "channel"

    const-string v1, "1"

    if-eqz p0, :cond_1

    const-string p0, "02-22"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "nt"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p0, "01-22"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/common/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "landingPageUrlType"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lx4/a0;->o()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ua"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p1}, Lsf/d;->a(Ljava/util/Map;)V

    invoke-static {}, Lpf/g;->v()Z

    move-result p0

    invoke-static {}, Lpf/g;->w()Z

    move-result v0

    const-string v2, "setting"

    if-nez v0, :cond_2

    const-string p0, "2"

    :goto_1
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string p0, "3"

    goto :goto_1

    :goto_2
    const-string p0, "up"

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lp4/i;

    const-string v0, "optimizemanage_omdatamodel"

    invoke-direct {p0, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v0, "https://adv.sec.miui.com/info/layout"

    invoke-static {p1, v0, p0}, Lxe/a;->e(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->g()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->k()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->g()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/optimizeresult/e;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->e:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/optimizeresult/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/optimizemanage/optimizeresult/e;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/c;

    instance-of v6, v4, Lcom/miui/optimizemanage/optimizeresult/i;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lcom/miui/optimizemanage/optimizeresult/i;

    invoke-virtual {v6}, Lcom/miui/optimizemanage/optimizeresult/i;->b()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Lcom/miui/optimizemanage/optimizeresult/i;->d()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/c;

    if-eqz v4, :cond_1

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/h;

    invoke-virtual {v4, v5}, Lcom/miui/optimizemanage/optimizeresult/h;->j(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_1
    if-lez v3, :cond_5

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizemanage/optimizeresult/c;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/optimizeresult/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    sub-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/optimizemanage/optimizeresult/g;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/optimizemanage/optimizeresult/e;->k:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/optimizeresult/e;->h:Z

    return v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/optimizeresult/e;->e:I

    return-void
.end method
