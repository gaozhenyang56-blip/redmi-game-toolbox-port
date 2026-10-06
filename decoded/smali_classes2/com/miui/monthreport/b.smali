.class public Lcom/miui/monthreport/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Lorg/json/JSONObject;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lorg/json/JSONObject;

.field private u:Ljava/lang/String;

.field private v:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/monthreport/b;->v:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/monthreport/b;->b:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/monthreport/b;->t:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/miui/monthreport/b;->u:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/monthreport/b;->a:I

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/monthreport/b;->c:J

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Leg/j;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/monthreport/b;->v:Landroid/content/Context;

    invoke-static {v0}, Lma/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/miui/monthreport/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/b;->v:Landroid/content/Context;

    invoke-static {v0}, Lma/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/b;->v:Landroid/content/Context;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->s:Ljava/lang/String;

    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->h:Ljava/lang/String;

    const-string v0, "ro.carrier.name"

    invoke-static {v0, v1}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->i:Ljava/lang/String;

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->j:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->l:Ljava/lang/String;

    invoke-static {}, Lx4/a0;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/monthreport/b;->v:Landroid/content/Context;

    invoke-static {v0}, Lx4/a0;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->q:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)Lcom/miui/monthreport/b;
    .locals 1

    new-instance v0, Lcom/miui/monthreport/b;

    invoke-direct {v0, p0}, Lcom/miui/monthreport/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/miui/monthreport/b;->a()V

    invoke-direct {v0, p1}, Lcom/miui/monthreport/b;->l(Ljava/lang/Exception;)V

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/miui/monthreport/b;->h()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "reportId"

    iget-object v4, p0, Lcom/miui/monthreport/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "d"

    iget-object v4, p0, Lcom/miui/monthreport/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "c"

    iget-object v4, p0, Lcom/miui/monthreport/b;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "r"

    iget-object v4, p0, Lcom/miui/monthreport/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "l"

    iget-object v4, p0, Lcom/miui/monthreport/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "v"

    iget-object v4, p0, Lcom/miui/monthreport/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "t"

    iget-object v4, p0, Lcom/miui/monthreport/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "a"

    iget-object v4, p0, Lcom/miui/monthreport/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "oa"

    iget-object v4, p0, Lcom/miui/monthreport/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "startTime"

    iget-wide v4, p0, Lcom/miui/monthreport/b;->o:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "endTime"

    iget-wide v4, p0, Lcom/miui/monthreport/b;->p:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "date"

    iget-object v4, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "events"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "o"

    iget-object v3, p0, Lcom/miui/monthreport/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "moduleName"

    iget-object v3, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private h()Lorg/json/JSONArray;
    .locals 4

    invoke-static {}, Lcom/miui/monthreport/a;->f()Lcom/miui/monthreport/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/miui/monthreport/a;->h(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/miui/monthreport/b;->o:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/monthreport/b;->p:J

    const-string v2, ""

    iput-object v2, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/monthreport/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/monthreport/a$c;

    invoke-virtual {p0, v2}, Lcom/miui/monthreport/b;->g(Lcom/miui/monthreport/a$c;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private l(Ljava/lang/Exception;)V
    .locals 6

    invoke-direct {p0}, Lcom/miui/monthreport/b;->f()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/monthreport/b;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/monthreport/b;->m(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/monthreport/b;->g:Ljava/lang/String;

    const-string v2, "oa"

    iget-object v3, p0, Lcom/miui/monthreport/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reportId"

    iget-object v3, p0, Lcom/miui/monthreport/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "date"

    iget-object v3, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "module"

    iget-object v3, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string v2, "class:%s, msg:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "exception"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/monthreport/b;->n(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/b;->u:Ljava/lang/String;

    return-void
.end method

.method private n(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/b;->t:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/monthreport/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/monthreport/b;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g(Lcom/miui/monthreport/a$c;)Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    iget v0, p1, Lcom/miui/monthreport/a$c;->b:I

    if-lez v0, :cond_4

    iget v0, p1, Lcom/miui/monthreport/a$c;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p1, Lcom/miui/monthreport/a$c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/miui/monthreport/a$c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/miui/monthreport/a$c;->d:J

    iget-wide v2, p0, Lcom/miui/monthreport/b;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    const-string v2, "yyyyMMdd"

    invoke-static {v0, v1, v2}, Lx4/x1;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p1, Lcom/miui/monthreport/a$c;->d:J

    iget-wide v2, p0, Lcom/miui/monthreport/b;->o:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iput-wide v0, p0, Lcom/miui/monthreport/b;->o:J

    :cond_2
    iget-wide v2, p0, Lcom/miui/monthreport/b;->p:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iput-wide v0, p0, Lcom/miui/monthreport/b;->p:J

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventId"

    iget-object v2, p1, Lcom/miui/monthreport/a$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventTime"

    iget-wide v2, p1, Lcom/miui/monthreport/a$c;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pkgName"

    iget-object v2, p1, Lcom/miui/monthreport/a$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventType"

    iget v2, p1, Lcom/miui/monthreport/a$c;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "version"

    iget v2, p1, Lcom/miui/monthreport/a$c;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/miui/monthreport/a$c;->f:Ljava/lang/String;

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/monthreport/b;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/monthreport/a$c;->a:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/miui/monthreport/b;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/monthreport/a$c;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/monthreport/b;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget v0, p0, Lcom/miui/monthreport/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/monthreport/b;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task : reportId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/monthreport/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/monthreport/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/monthreport/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
