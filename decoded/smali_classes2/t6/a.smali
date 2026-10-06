.class public Lt6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:I = 0x98e508

.field public static B:I = 0x98e509

.field private static C:Landroid/util/SparseIntArray; = null

.field private static D:Landroid/util/SparseIntArray; = null

.field private static E:Landroid/util/SparseIntArray; = null

.field private static F:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ln6/c;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation
.end field

.field public static a:I = 0x98e4a1

.field public static b:I = 0x98e4a2

.field public static c:I = 0x98e4a3

.field public static d:I = 0x98e4a4

.field public static e:I = 0x98e4a5

.field public static f:I = 0x98e4a7

.field public static g:I = 0x98e4a8

.field public static h:I = 0x98e4a9

.field public static i:I = 0x98e4aa

.field public static j:I = 0x98e4ab

.field public static k:I = 0x98e4ac

.field public static l:I = 0x98e4ad

.field public static m:I = 0x98e4ae

.field public static n:I = 0x98e4af

.field public static o:I = 0x98e4b0

.field public static p:I = 0x98e4b1

.field public static q:I = 0x98e4b2

.field public static r:I = 0x98e4b3

.field public static s:I = 0x98e4b4

.field public static t:I = 0x98e4b5

.field public static u:I = 0x98e4b6

.field public static v:I = 0x98e4b7

.field public static w:I = 0x98e504

.field public static x:I = 0x98e505

.field public static y:I = 0x98e506

.field public static z:I = 0x98e507


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lt6/a;->F:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lt6/a;->G:Ljava/util/List;

    invoke-static {}, Lt6/a;->i()V

    invoke-static {}, Lt6/a;->k()V

    invoke-static {}, Lt6/a;->j()V

    invoke-static {}, Lt6/a;->l()V

    invoke-static {}, Lt6/a;->m()V

    return-void
.end method

.method public static a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    const/16 p0, 0xb

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/16 p0, 0xe

    if-le v0, p0, :cond_1

    const/16 p0, 0xd

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addMoreToolsIfNeed: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBToolsFunctionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_2

    new-instance v0, Lcom/miui/gamebooster/model/n;

    const v1, 0x98e567

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120965

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080609

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {p1, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static b(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lt6/a;->E:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lt6/a;->D:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static e(I)Ln6/c;
    .locals 1

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln6/c;

    if-nez p0, :cond_0

    sget-object p0, Ln6/c;->T:Ln6/c;

    :cond_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lt6/a;->g(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/n;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/n;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "GBToolsFunctionManager"

    const-string v2, "getSupportFunctions: error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation

    const-string v0, "GBToolsFunctionManager"

    const-string v1, "getLocalFunctionData: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v8, Lcom/miui/gamebooster/model/n;

    sget-object v9, Ln6/h;->c:Ln6/h;

    const v2, 0x7f120967

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120966

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v4, 0x98e56a

    const v7, 0x7f08060a

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/miui/gamebooster/model/n;

    sget v4, Lt6/a;->a:I

    const v2, 0x7f1209b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120964

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080605

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La8/f0;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v8, Lcom/miui/gamebooster/model/n;

    const v4, 0x98e568

    const v2, 0x7f120951

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120950

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0805fa

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    move v8, v2

    invoke-static {}, Lef/x;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, La8/f0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v10, Lcom/miui/gamebooster/model/n;

    const v4, 0x98e569

    const v2, 0x7f120953

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120952

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0805fb

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    :cond_1
    invoke-static {}, La8/g0;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, p1}, Lt6/a;->o(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    rem-int/lit8 v2, v8, 0x2

    const v3, 0x7f1209c1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    new-instance v10, Lcom/miui/gamebooster/model/n;

    sget v4, Lt6/a;->x:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f120ae5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080618

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lcom/miui/gamebooster/model/n;-><init>(Ln6/h;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v4, Lt6/a;->l:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f080619

    invoke-direct {v2, v4, v3, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->c:I

    const v4, 0x7f1209bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08060f

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->d:I

    const v4, 0x7f1209ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08060e

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->b:I

    const v4, 0x7f12099a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0805ff

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lw6/i;->b(Ljava/lang/String;I)Lx6/b;

    move-result-object p2

    invoke-virtual {p2}, Lx6/b;->c()Z

    move-result p2

    invoke-static {p0, p1, p2}, Le7/b;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->z:I

    const v3, 0x7f1209b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080604

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Li6/a;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez p2, :cond_5

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->A:I

    const v3, 0x7f120993

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0805fe

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lj8/s;->i()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->g:I

    const v3, 0x7f1209aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080603

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, La8/j;->h()Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->m:I

    const v3, 0x7f120990

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0805fc

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {}, La8/g0;->k0()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->k:I

    const v3, 0x7f12098e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0805fd

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->e:I

    const v3, 0x7f1209c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08061a

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La8/g0;->q0()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->j:I

    const v3, 0x7f1209bc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080612

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->B:I

    const v3, 0x7f1209bd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080615

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object p0

    invoke-virtual {p0}, Lp7/a;->e()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->w:I

    const v3, 0x7f120aa5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080611

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, La8/g0;->C()Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->f:I

    const v3, 0x7f1209b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080606

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lw6/i;->e()Z

    move-result p0

    if-eqz p0, :cond_f

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->p:I

    if-eqz p2, :cond_c

    const v3, 0x7f120a52

    goto :goto_2

    :cond_c
    const v3, 0x7f120a4f

    :goto_2
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_e

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-static {v4}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v4, 0x7f08060c

    goto :goto_3

    :cond_d
    const v4, 0x7f08060d

    goto :goto_3

    :cond_e
    const v4, 0x7f080600

    :goto_3
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, La8/s0;->i()La8/s0;

    move-result-object p0

    invoke-virtual {p0, p1}, La8/s0;->t(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->s:I

    const v3, 0x7f1209b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080601

    invoke-direct {p0, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {p1, p2}, Lv8/c;->h(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_11

    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget p1, Lt6/a;->y:I

    const p2, 0x7f1209b2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v2, 0x7f08061b

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    new-instance p0, Lcom/miui/gamebooster/model/n;

    sget p1, Lt6/a;->i:I

    const p2, 0x7f121622

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f080610

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v0}, Lt6/a;->a(ILjava/util/List;)V

    return-object v0
.end method

.method public static h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/n;",
            ">;"
        }
    .end annotation

    sget-object v0, Lt6/a;->G:Ljava/util/List;

    return-object v0
.end method

.method private static i()V
    .locals 5

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->a:I

    const v2, 0x7f080605

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->b:I

    const v2, 0x7f0805ff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->c:I

    const v2, 0x7f08060f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->d:I

    const v2, 0x7f08060e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->e:I

    const v2, 0x7f08061a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->l:I

    const v2, 0x7f080619

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->f:I

    const v2, 0x7f080606

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->g:I

    const v2, 0x7f080603

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->h:I

    const v2, 0x7f080666

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->i:I

    const v2, 0x7f080610

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->k:I

    const v2, 0x7f0805fd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->m:I

    const v2, 0x7f0805fc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->n:I

    const v2, 0x7f080611

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->o:I

    const v3, 0x7f080652

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->p:I

    const v3, 0x7f080600

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->q:I

    const v3, 0x7f080661

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->r:I

    const v4, 0x7f080660

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->s:I

    const v4, 0x7f080601

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->t:I

    const v4, 0x7f08064f

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->u:I

    const v4, 0x7f080659

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->v:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->x:I

    const v2, 0x7f080618

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->y:I

    const v2, 0x7f08061b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->z:I

    const v2, 0x7f080604

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->A:I

    const v2, 0x7f0805fe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->B:I

    const v2, 0x7f080615

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    const v1, 0x98e56a

    const v2, 0x7f08060a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    const v1, 0x98e568

    const v2, 0x7f0805fa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->C:Landroid/util/SparseIntArray;

    const v1, 0x98e569

    const v2, 0x7f0805fb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static j()V
    .locals 3

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    const v1, 0x98e56a

    const v2, 0x7f120966

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->a:I

    const v2, 0x7f120964

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    const v1, 0x98e568

    const v2, 0x7f120950

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    const v1, 0x98e569

    const v2, 0x7f120952

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->w:I

    const v2, 0x7f120ae3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->x:I

    const v2, 0x7f120ae5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->y:I

    const v2, 0x7f120ae6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->z:I

    const v2, 0x7f120ae1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->A:I

    const v2, 0x7f120ae0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->B:I

    const v2, 0x7f120ae4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->s:I

    const v2, 0x7f1209b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->t:I

    const v2, 0x7f120aeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->E:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->v:I

    const v2, 0x7f120aee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static k()V
    .locals 4

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->a:I

    const v2, 0x7f1209b3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->b:I

    const v2, 0x7f12099a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->c:I

    const v2, 0x7f1209bb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->d:I

    const v2, 0x7f1209ba

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->e:I

    const v2, 0x7f1209c3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->l:I

    const v2, 0x7f1209c1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->f:I

    const v2, 0x7f1209b5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->g:I

    const v2, 0x7f1209aa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->h:I

    const v2, 0x7f120994

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->i:I

    const v2, 0x7f121622

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->j:I

    const v2, 0x7f1209bc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->k:I

    const v2, 0x7f12098e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->m:I

    const v2, 0x7f120990

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->n:I

    const v2, 0x7f120aa5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->o:I

    const v3, 0x7f120bc8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->p:I

    const v3, 0x7f120a4f

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->r:I

    const v3, 0x7f120add

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->y:I

    const v3, 0x7f1209b2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->w:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->z:I

    const v2, 0x7f1209b1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->A:I

    const v2, 0x7f120993

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->B:I

    const v2, 0x7f1209bd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->q:I

    const v2, 0x7f120ae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->s:I

    const v2, 0x7f1209b4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->t:I

    const v2, 0x7f120aeb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->v:I

    const v2, 0x7f120aee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    sget v1, Lt6/a;->u:I

    const v2, 0x7f120906

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    const v1, 0x98e56a

    const v2, 0x7f120967

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    const v1, 0x98e568

    const v2, 0x7f120951

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lt6/a;->D:Landroid/util/SparseIntArray;

    const v1, 0x98e569

    const v2, 0x7f120953

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static l()V
    .locals 3

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->i:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->p:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->h:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->g:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->r:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->j:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La8/g0;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->x:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, La8/g0;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->w:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lj8/s;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->u:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->v:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->z:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La8/c0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->s:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, La8/j;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->C:Ln6/c;

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {}, La8/j;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->B:Ln6/c;

    goto :goto_0

    :cond_6
    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->A:Ln6/c;

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->G()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->H:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, La8/g0;->k0()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->F:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lw6/i;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->G:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->v()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->I:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->D:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {}, La8/g0;->a0()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->x:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {}, La8/g0;->Z()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->y:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/4 v0, 0x0

    invoke-static {v0}, Le7/b;->e(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->n:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {}, La8/g0;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->q:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->H()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->K:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->R()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->M:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->J:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->o:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    sget v1, Lt6/a;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->L:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    const v1, 0x98e56a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->N:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    const v1, 0x98e568

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->Q:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    const v1, 0x98e569

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->R:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    const v1, 0x98e567

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln6/c;->S:Ln6/c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static m()V
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->a:I

    const v4, 0x7f1209b3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080605

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->b:I

    const v4, 0x7f12099a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08064d

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->c:I

    const v4, 0x7f1209bb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08065b

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->d:I

    const v4, 0x7f1209ba

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08065a

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La8/g0;->k0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->k:I

    const v4, 0x7f12098e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08064c

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->e:I

    const v4, 0x7f1209c3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080664

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, La8/c0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->j:I

    const v4, 0x7f1209bc

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08065e

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, La8/g0;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->f:I

    const v3, 0x7f1209b5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080656

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lj8/s;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->g:I

    const v3, 0x7f1209a9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080653

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {}, La8/g0;->I()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->h:I

    const v3, 0x7f120994

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080666

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {}, Lw6/i;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->p:I

    const v3, 0x7f120a50

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080650

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lt6/a;->F:Ljava/util/Map;

    sget v2, Lt6/a;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ln6/c;->G:Ln6/c;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, La8/j;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->m:I

    const v4, 0x7f120990

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0805fc

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    invoke-virtual {v1}, La8/b;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->r:I

    const v4, 0x7f120add

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080660

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->i:I

    const v3, 0x7f121622

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08065c

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->G()Z

    move-result v1

    const v2, 0x7f080661

    if-eqz v1, :cond_8

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->q:I

    const v4, 0x7f120ae7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v3, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->H()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->t:I

    const v4, 0x7f120aeb

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08064f

    invoke-direct {v1, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v3, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->R()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->v:I

    const v4, 0x7f120aee

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v1

    invoke-virtual {v1}, Lp7/a;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->w:I

    const v3, 0x7f120aa5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806cc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, La8/g0;->a0()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->x:I

    const v3, 0x7f1209c1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806ce

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, La8/g0;->Z()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->y:I

    const v3, 0x7f1209b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806cf

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Le7/b;->d()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->z:I

    const v3, 0x7f1209b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806cb

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {}, La8/g0;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->A:I

    const v3, 0x7f120993

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806ca

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    new-instance v1, Lcom/miui/gamebooster/model/n;

    sget v2, Lt6/a;->B:I

    const v3, 0x7f1209bd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ae4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0806cd

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lt6/a;->G:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Ln6/a;->a:Z

    if-eqz v1, :cond_10

    sget-object v1, Lt6/a;->G:Ljava/util/List;

    new-instance v2, Lcom/miui/gamebooster/model/n;

    sget v3, Lt6/a;->o:I

    const v4, 0x7f120bc8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f080652

    invoke-direct {v2, v3, v0, v4}, Lcom/miui/gamebooster/model/n;-><init>(ILjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public static n(I)Z
    .locals 1

    sget-object v0, Lt6/a;->F:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lq8/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
