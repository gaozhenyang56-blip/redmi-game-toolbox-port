.class public Lo2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo2/g$f;,
        Lo2/g$g;,
        Lo2/g$j;,
        Lo2/g$h;,
        Lo2/g$i;,
        Lo2/g$k;,
        Lo2/g$l;
    }
.end annotation


# static fields
.field private static F:Lo2/g;


# instance fields
.field private A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private B:Ljava/util/concurrent/atomic/AtomicInteger;

.field private C:Lo2/g$j;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Landroid/content/pm/IPackageDeleteObserver$Stub;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo2/g$g;

.field private c:Lcom/miui/guardprovider/VirusObserver;

.field private d:Lcom/miui/guardprovider/VirusObserver;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/Long;

.field private g:Landroid/content/pm/PackageManager;

.field private h:Lcom/miui/antivirus/model/d;

.field private i:Lcom/miui/antivirus/model/d;

.field private j:Lcom/miui/antivirus/model/j;

.field private k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/lang/Object;

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:Lorg/json/JSONArray;

.field private w:Lorg/json/JSONArray;

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo2/g;->a:Ljava/util/List;

    new-instance v0, Lo2/g$a;

    invoke-direct {v0, p0}, Lo2/g$a;-><init>(Lo2/g;)V

    iput-object v0, p0, Lo2/g;->c:Lcom/miui/guardprovider/VirusObserver;

    new-instance v0, Lo2/g$b;

    invoke-direct {v0, p0}, Lo2/g$b;-><init>(Lo2/g;)V

    iput-object v0, p0, Lo2/g;->d:Lcom/miui/guardprovider/VirusObserver;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lo2/g;->f:Ljava/lang/Long;

    new-instance v2, Lcom/miui/antivirus/model/j;

    invoke-direct {v2}, Lcom/miui/antivirus/model/j;-><init>()V

    iput-object v2, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lo2/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lo2/g;->n:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lo2/g;->o:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lo2/g;->p:Ljava/lang/Object;

    iput-wide v0, p0, Lo2/g;->q:J

    iput-wide v0, p0, Lo2/g;->r:J

    iput-wide v0, p0, Lo2/g;->s:J

    iput-wide v0, p0, Lo2/g;->t:J

    iput-wide v0, p0, Lo2/g;->u:J

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lo2/g;->v:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lo2/g;->w:Lorg/json/JSONArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo2/g;->x:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo2/g;->y:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo2/g;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo2/g;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lo2/g$j;

    invoke-direct {v0}, Lo2/g$j;-><init>()V

    iput-object v0, p0, Lo2/g;->C:Lo2/g$j;

    new-instance v0, Lo2/g$c;

    invoke-direct {v0, p0}, Lo2/g$c;-><init>(Lo2/g;)V

    iput-object v0, p0, Lo2/g;->E:Landroid/content/pm/IPackageDeleteObserver$Stub;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private A0(Lo2/g$h;)V
    .locals 7

    const-string v0, "PaySafetyCheckManager"

    invoke-static {}, Lo2/h;->y()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lo2/g$h;->c()V

    return-void

    :cond_0
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lw2/l;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lo2/g$h;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lo2/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "wifi_type_approve"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "wifi_item_arp"

    const-string v4, "wifi_item_dns"

    const-string v5, "wifi_item_fake"

    const-string v6, "wifi_item_encryption"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lo2/g$h;->e(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Lo2/g$h;->e(I)V

    const-string v1, "background scan : wifi risk !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    invoke-interface {p1}, Lo2/g$h;->c()V

    return-void
.end method

.method private B0(Lo2/g$i;)V
    .locals 4

    invoke-static {}, Lo2/h;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lo2/h;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v0, Lcom/miui/antivirus/model/j$a;->a:Lcom/miui/antivirus/model/j$a;

    :goto_0
    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/miui/antivirus/model/j$a;->a:Lcom/miui/antivirus/model/j$a;

    invoke-interface {p1, v0, v3}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->b:Lcom/miui/antivirus/model/j$a;

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->d:Lcom/miui/antivirus/model/j$a;

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->c:Lcom/miui/antivirus/model/j$a;

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->e:Lcom/miui/antivirus/model/j$a;

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->a:Lcom/miui/antivirus/model/j$a;

    invoke-interface {p1, v0, v3}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->b:Lcom/miui/antivirus/model/j$a;

    const-string v2, "wifi_item_encryption"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->d:Lcom/miui/antivirus/model/j$a;

    const-string v2, "wifi_item_dns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->c:Lcom/miui/antivirus/model/j$a;

    const-string v2, "wifi_item_fake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p1, v0, v2}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V

    sget-object v0, Lcom/miui/antivirus/model/j$a;->e:Lcom/miui/antivirus/model/j$a;

    const-string v2, "wifi_item_arp"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lo2/g$i;->b(Lcom/miui/antivirus/model/j$a;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PaySafetyCheckManager"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private H(Ljava/lang/String;)Lcom/miui/antivirus/model/d;
    .locals 1

    iget-object v0, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/model/d;

    return-object p1
.end method

.method public static declared-synchronized J(Landroid/content/Context;)Lo2/g;
    .locals 2

    const-class v0, Lo2/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/g;->F:Lo2/g;

    if-nez v1, :cond_0

    new-instance v1, Lo2/g;

    invoke-direct {v1, p0}, Lo2/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo2/g;->F:Lo2/g;

    :cond_0
    sget-object p0, Lo2/g;->F:Lo2/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private K(Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "\\"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/*"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lo2/g;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo2/g;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lo2/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lo2/g;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lo2/g;Ljava/lang/String;)Lcom/miui/antivirus/model/d;
    .locals 0

    invoke-direct {p0, p1}, Lo2/g;->H(Ljava/lang/String;)Lcom/miui/antivirus/model/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lo2/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo2/g;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lo2/g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo2/g;->o:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lo2/g;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lo2/g;->f:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic g(Lo2/g;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lo2/g;->f:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic h(Lo2/g;J)J
    .locals 0

    iput-wide p1, p0, Lo2/g;->t:J

    return-wide p1
.end method

.method static synthetic i(Lo2/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lo2/g;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic j(Lo2/g;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic k(Lo2/g;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lo2/g;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic l(Lo2/g;J)J
    .locals 0

    iput-wide p1, p0, Lo2/g;->u:J

    return-wide p1
.end method

.method private m()V
    .locals 11

    const-string v0, "PaySafetyCheckManager"

    :try_start_0
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lx4/f1;->B(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v4, Lcom/miui/antivirus/model/d;

    invoke-direct {v4}, Lcom/miui/antivirus/model/d;-><init>()V

    iget-object v5, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/d;->D(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    sget-object v5, Lo2/g$k;->a:Lo2/g$k;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    iget-object v5, p0, Lo2/g;->x:Ljava/util/Map;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v9, "packageName"

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "versionCode"

    iget v10, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "signatureHash"

    iget-object v10, p0, Lo2/g;->e:Landroid/content/Context;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v3}, Lw2/p;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "installerPackage"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timeStamp"

    invoke-virtual {v8, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "nonce"

    invoke-virtual {v8, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lo2/g;->v:Lorg/json/JSONArray;

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Exception in get foreground installed scanning packages: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private n()V
    .locals 11

    const-string v0, "PaySafetyCheckManager"

    iget-object v1, p0, Lo2/g;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lo2/g;->w:Lorg/json/JSONArray;

    :try_start_0
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lx4/f1;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v3, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lx4/f1;->M(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lo2/g;->y:Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v8, "packageName"

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "versionCode"

    iget v9, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "signatureHash"

    iget-object v9, p0, Lo2/g;->e:Landroid/content/Context;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lw2/p;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "installerPackage"

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timeStamp"

    invoke-virtual {v7, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "nonce"

    invoke-virtual {v7, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lo2/g;->w:Lorg/json/JSONArray;

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Exception in get background scanning packages :"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private o()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "external"

    iget-object v2, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "_data"

    const-string v4, "date_modified"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data LIKE \'%.apk\'"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lx4/f1;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/miui/antivirus/model/d;

    invoke-direct {v3}, Lcom/miui/antivirus/model/d;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/d;->D(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    sget-object v2, Lo2/g$k;->b:Lo2/g$k;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    iget-object v2, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PaySafetyCheckManager"

    const-string v3, "Exception in get foreground scanning apks: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private s0()V
    .locals 6

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lw2/t;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-static {}, Lw2/t;->A()Z

    invoke-static {}, Lo2/h;->y()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v4}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x5

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    invoke-static {}, Lo2/h;->t()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x3

    :goto_3
    invoke-static {}, Lo2/h;->v()Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lo2/g;->Q(Ljava/lang/Boolean;)I

    move-result v4

    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v5, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v4, v1

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    add-int/2addr v4, v2

    iput v4, p0, Lo2/g;->z:I

    return-void
.end method

.method private t(Lo2/g$i;)V
    .locals 8

    new-instance v0, Lcom/miui/antivirus/model/d;

    invoke-direct {v0}, Lcom/miui/antivirus/model/d;-><init>()V

    sget-object v1, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->E(Lcom/miui/antivirus/model/d$c;)V

    sget-object v1, Lcom/miui/antivirus/model/d$b;->e:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lw2/t;->y(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    const-wide/high16 v4, 0x20000000000000L

    invoke-static {v1, v4, v5}, Lcom/miui/permcenter/n;->B(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v6}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/d;->Q(Z)V

    :goto_1
    invoke-interface {p1, v0}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    return-void

    :cond_2
    invoke-virtual {v0, v3}, Lcom/miui/antivirus/model/d;->Q(Z)V

    goto :goto_1
.end method

.method private u()Z
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/system/bin/"

    const-string v3, "/system/xbin/"

    const-string v4, "/system/sbin/"

    const-string v5, "/sbin/"

    const-string v6, "/vendor/bin/"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PaySafetyCheckManager"

    const-string v3, "checkSystemRoot : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private w0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lw2/t;->M(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    sget-object v0, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v0

    invoke-interface {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/o;->C(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo2/h;->w()Z

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->y6([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;ZI)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lo2/h;->w()Z

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->v0([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PaySafetyCheckManager"

    const-string p3, "startVirusScanTask Background: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private x0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;Lo2/g$i;J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo2/g;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lo2/g;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p5

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p5, p5, v1

    if-lez p5, :cond_1

    invoke-static {p1}, Lw2/t;->M(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    sget-object p5, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p5}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object p5

    invoke-interface {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->getVersion()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/miui/securityscan/scanner/o;->C(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-static {}, Lo2/h;->w()Z

    move-result p5

    const/4 p6, 0x5

    invoke-interface {p1, p2, p3, p5, p6}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->y6([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;ZI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lo2/h;->w()Z

    move-result p5

    invoke-interface {p1, p2, p3, p5}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->v0([Ljava/lang/String;Lcom/miui/guardprovider/aidl/IVirusObserver;Z)I

    move-result p1

    :goto_0
    const-string p2, "PaySafetyCheckManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "virusCheck  taskId ="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, p1}, Lo2/g$i;->e(I)V

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "PaySafetyCheckManager"

    const-string p3, "startVirusScanTask Foreground: "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private y()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lo2/g;->v:Lorg/json/JSONArray;

    return-void
.end method

.method private y0(Lo2/g$h;)V
    .locals 1

    invoke-static {}, Lo2/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo2/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lo2/g$h;->e(I)V

    const-string p1, "PaySafetyCheckManager"

    const-string v0, "background scan : root risk !"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private z0(Lo2/g$i;)V
    .locals 5

    invoke-static {}, Lo2/h;->t()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo2/g;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/model/h;

    sget-object v3, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/h;-><init>(Lcom/miui/antivirus/model/d$c;)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/h;->Z(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/h;->Y(Z)V

    invoke-interface {p1, v0}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    invoke-interface {p1}, Lo2/g$i;->i()V

    return-void

    :cond_0
    invoke-static {}, Lo2/h;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->e()I

    move-result v3

    const-string v4, "com.android.updater"

    invoke-static {v0, v4, v3}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lx4/a0;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/model/h;

    sget-object v3, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v3}, Lcom/miui/antivirus/model/h;-><init>(Lcom/miui/antivirus/model/d$c;)V

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/h;->Y(Z)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/h;->Z(Z)V

    invoke-interface {p1, v0}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    :cond_1
    invoke-interface {p1}, Lo2/g$i;->i()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo2/g;->n:Z

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    return-void
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public E()V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/model/j;

    invoke-direct {v0}, Lcom/miui/antivirus/model/j;-><init>()V

    iput-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    return-void
.end method

.method public F(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/model/i;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/miui/antivirus/model/d;

    invoke-direct {v2}, Lcom/miui/antivirus/model/d;-><init>()V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->e()I

    move-result v3

    invoke-static {v3}, Lw2/v;->a(I)Lo2/g$l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->O(Lo2/g$l;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->U(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->V(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->E(Lcom/miui/antivirus/model/d$c;)V

    sget-object v3, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->F(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/antivirus/model/i;->f()Lo2/b$c;

    move-result-object v1

    sget-object v3, Lo2/b$c;->a:Lo2/b$c;

    if-ne v1, v3, :cond_2

    sget-object v1, Lo2/g$k;->a:Lo2/g$k;

    goto :goto_1

    :cond_2
    sget-object v1, Lo2/g$k;->b:Lo2/g$k;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v1

    sget-object v3, Lo2/g$l;->a:Lo2/g$l;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {v2, v4}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v2, v4}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    invoke-virtual {p0, v2}, Lo2/g;->r(Lcom/miui/antivirus/model/d;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public G()J
    .locals 5

    iget-wide v0, p0, Lo2/g;->t:J

    iget-wide v2, p0, Lo2/g;->u:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public I()Lw2/r;
    .locals 1

    invoke-virtual {p0}, Lo2/g;->b0()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lw2/r;->d:Lw2/r;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lo2/g;->Z()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lw2/r;->c:Lw2/r;

    return-object v0

    :cond_1
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lo2/g;->D:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public M()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo2/g;->D:Ljava/util/List;

    return-object v0
.end method

.method public N()I
    .locals 1

    iget-object v0, p0, Lo2/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public O()Lw2/r;
    .locals 1

    invoke-virtual {p0}, Lo2/g;->N()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lw2/r;->d:Lw2/r;

    return-object v0

    :cond_0
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0
.end method

.method public P()I
    .locals 3

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->W()I

    move-result v0

    invoke-virtual {p0}, Lo2/g;->b0()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lo2/g;->Z()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lo2/g;->n:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {}, Lo2/h;->r()Z

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public Q(Ljava/lang/Boolean;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    :cond_0
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object v0, p0, Lo2/g;->v:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public R()Lcom/miui/antivirus/model/d;
    .locals 1

    iget-object v0, p0, Lo2/g;->h:Lcom/miui/antivirus/model/d;

    return-object v0
.end method

.method public S()Z
    .locals 1

    iget-boolean v0, p0, Lo2/g;->n:Z

    return v0
.end method

.method public T()Lw2/r;
    .locals 1

    iget-boolean v0, p0, Lo2/g;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lw2/r;->d:Lw2/r;

    return-object v0
.end method

.method public U()Lcom/miui/antivirus/model/d;
    .locals 1

    iget-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    return-object v0
.end method

.method public V()Lw2/r;
    .locals 1

    iget-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lw2/r;->d:Lw2/r;

    return-object v0

    :cond_0
    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lw2/r;->c:Lw2/r;

    return-object v0
.end method

.method public W()J
    .locals 4

    iget-wide v0, p0, Lo2/g;->q:J

    iget-wide v2, p0, Lo2/g;->r:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lo2/g;->s:J

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lo2/g;->G()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public X()I
    .locals 1

    iget v0, p0, Lo2/g;->z:I

    return v0
.end method

.method public Y()Lw2/r;
    .locals 2

    invoke-virtual {p0}, Lo2/g;->f0()Lw2/r;

    move-result-object v0

    sget-object v1, Lw2/r;->d:Lw2/r;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lo2/g;->V()Lw2/r;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lo2/g;->T()Lw2/r;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lo2/g;->I()Lw2/r;

    move-result-object v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo2/g;->f0()Lw2/r;

    move-result-object v0

    sget-object v1, Lw2/r;->c:Lw2/r;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lo2/g;->V()Lw2/r;

    move-result-object v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lo2/g;->I()Lw2/r;

    move-result-object v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public Z()I
    .locals 1

    iget-object v0, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public a0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/d;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b0()I
    .locals 1

    iget-object v0, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public c0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/d;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d0()I
    .locals 4

    iget-object v0, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/model/d;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v2

    sget-object v3, Lo2/g$l;->c:Lo2/g$l;

    if-eq v2, v3, :cond_2

    sget-object v3, Lo2/g$l;->d:Lo2/g$l;

    if-ne v2, v3, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public e0()Lcom/miui/antivirus/model/j;
    .locals 1

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    return-object v0
.end method

.method public f0()Lw2/r;
    .locals 1

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->b0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->Z()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lw2/r;->c:Lw2/r;

    return-object v0

    :cond_1
    sget-object v0, Lw2/r;->b:Lw2/r;

    return-object v0

    :cond_2
    :goto_0
    sget-object v0, Lw2/r;->d:Lw2/r;

    return-object v0
.end method

.method public g0()V
    .locals 2

    invoke-direct {p0}, Lo2/g;->y()V

    invoke-direct {p0}, Lo2/g;->w()V

    invoke-virtual {p0}, Lo2/g;->E()V

    invoke-virtual {p0}, Lo2/g;->z()V

    invoke-virtual {p0}, Lo2/g;->B()V

    invoke-virtual {p0}, Lo2/g;->D()V

    invoke-virtual {p0}, Lo2/g;->x()V

    invoke-virtual {p0}, Lo2/g;->C()V

    invoke-virtual {p0}, Lo2/g;->A()V

    iget-object v0, p0, Lo2/g;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lo2/g;->m()V

    invoke-direct {p0}, Lo2/g;->o()V

    invoke-direct {p0}, Lo2/g;->s0()V

    iget-object v0, p0, Lo2/g;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-virtual {p0}, Lo2/g;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lw2/t;->l(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lo2/g;->D:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 12

    const-string v0, "PaySafetyCheckManager"

    :try_start_0
    const-string v1, "android.app.AppGlobals"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v5}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lo2/g$d;

    invoke-direct {v2, p0}, Lo2/g$d;-><init>(Lo2/g;)V

    invoke-static {v1, p1, v2, v3}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "installSignedApp exception!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public i0()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "IN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lw2/t;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j0()Z
    .locals 1

    iget-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k0()Z
    .locals 1

    iget-object v0, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l0(Lo2/g$i;)V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lw2/t;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v0}, Lo2/g;->K(Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lw2/t;->D()Z

    move-result v2

    const-string v3, "com.google.android.apps.messaging"

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    invoke-static {}, Lx4/t;->u()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lx4/t;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "com.android.mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.jeejen.family.miui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/miui/antivirus/model/d;

    invoke-direct {v2}, Lcom/miui/antivirus/model/d;-><init>()V

    sget-object v3, Lo2/g$k;->a:Lo2/g$k;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/d;->N(Lo2/g$k;)V

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/model/d;->I(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lo2/g;->g:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/antivirus/model/d;->C(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/d;->R(Ljava/lang/String;)V

    sget-object v0, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/d;->E(Lcom/miui/antivirus/model/d$c;)V

    sget-object v0, Lcom/miui/antivirus/model/d$b;->d:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-interface {p1, v2}, Lo2/g$i;->k(Lcom/miui/antivirus/model/d;)V

    :cond_3
    invoke-interface {p1}, Lo2/g$i;->c()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-interface {p1}, Lo2/g$i;->c()V

    :cond_5
    :goto_1
    return-void
.end method

.method public m0(Lcom/miui/antivirus/model/d;)V
    .locals 1

    iget-object v0, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n0(Lcom/miui/antivirus/model/d;)V
    .locals 2

    iget-object v0, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/scanner/ScoreManager;->C(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->R()V

    return-void
.end method

.method public o0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo2/g;->D:Ljava/util/List;

    return-void
.end method

.method public p(Lcom/miui/antivirus/model/d;)V
    .locals 2

    iget-object v0, p0, Lo2/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p0(Lcom/miui/antivirus/model/d;)V
    .locals 0

    iput-object p1, p0, Lo2/g;->h:Lcom/miui/antivirus/model/d;

    return-void
.end method

.method public q(Lcom/miui/antivirus/model/d;)V
    .locals 2

    iget-object v0, p0, Lo2/g;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q0(Z)V
    .locals 0

    iput-boolean p1, p0, Lo2/g;->n:Z

    return-void
.end method

.method public r(Lcom/miui/antivirus/model/d;)V
    .locals 2

    iget-object v0, p0, Lo2/g;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r0(Lcom/miui/antivirus/model/d;)V
    .locals 0

    iput-object p1, p0, Lo2/g;->i:Lcom/miui/antivirus/model/d;

    return-void
.end method

.method public s(Lcom/miui/guardprovider/aidl/IAntiVirusServer;ILo2/g$i;)V
    .locals 5

    iget-object v0, p0, Lo2/g;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo2/g;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lo2/g;->f:Ljava/lang/Long;

    invoke-interface {p1, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->O1(I)V

    invoke-interface {p3}, Lo2/g$i;->f()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t0(Lcom/miui/antivirus/model/j$a;Z)V
    .locals 2

    sget-object v0, Lo2/g$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/j;->c0(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/j;->g0(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/j;->e0(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/j;->f0(Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lo2/g;->j:Lcom/miui/antivirus/model/j;

    invoke-virtual {p1, p2}, Lcom/miui/antivirus/model/j;->d0(Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized u0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lo2/g$h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lo2/g$h;->d()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string v0, "PaySafetyCheckManager"

    const-string v1, "WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lo2/g;->A0(Lo2/g$h;)V

    :cond_0
    const-string v0, "PaySafetyCheckManager"

    const-string v1, "SYSTEM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lo2/g;->y0(Lo2/g$h;)V

    invoke-direct {p0}, Lo2/g;->n()V

    const-string v0, "PaySafetyCheckManager"

    const-string v1, "VIRUS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lo2/g;->d:Lcom/miui/guardprovider/VirusObserver;

    invoke-virtual {v0, p2}, Lcom/miui/guardprovider/VirusObserver;->o8(Lo2/g$h;)V

    iget-object v0, p0, Lo2/g;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lo2/g;->d:Lcom/miui/guardprovider/VirusObserver;

    invoke-direct {p0, p1, v0, v1}, Lo2/g;->w0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_1

    const-string p1, "PaySafetyCheckManager"

    const-string v0, "SIGN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lo2/g$f;

    iget-object v0, p0, Lo2/g;->w:Lorg/json/JSONArray;

    invoke-direct {p1, p0, p2, v0}, Lo2/g$f;-><init>(Lo2/g;Lo2/g$h;Lorg/json/JSONArray;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lo2/g;->C:Lo2/g$j;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "PaySafetyCheckManager"

    const-string v0, "Exception in active scan :"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public v(Lcom/miui/antivirus/model/d;)V
    .locals 12

    const-string v0, "PaySafetyCheckManager"

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->r()Lo2/g$k;

    move-result-object v1

    :try_start_0
    sget-object v2, Lo2/g$k;->a:Lo2/g$k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string v1, "android.app.AppGlobals"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPackageManager"

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v5}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/16 v10, 0x3e7

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ltg/a;->b(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lo2/g;->E:Landroid/content/pm/IPackageDeleteObserver$Stub;

    invoke-static {v1, v2, v4, v3}, Ltg/a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "cleanupVirus exception!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/c0;->a(Ljava/lang/String;)Z

    iget-object v1, p0, Lo2/g;->e:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :goto_0
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/miui/securityscan/scanner/ScoreManager;->C(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->R()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "cleanupVirus : "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public declared-synchronized v0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lo2/g$i;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo2/g;->g0()V

    iget-object v0, p0, Lo2/g;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lo2/g;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Lo2/g$i;->d()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Lo2/g$i;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lo2/g$i;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string v0, "PaySafetyCheckManager"

    const-string v1, "wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    invoke-interface {p2, v2}, Lo2/g$i;->j(Lcom/miui/antivirus/model/a$a;)V

    invoke-direct {p0, p2}, Lo2/g;->B0(Lo2/g$i;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lo2/g;->q:J

    :cond_1
    invoke-interface {p2}, Lo2/g$i;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lo2/g$i;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    const-string v0, "PaySafetyCheckManager"

    const-string v1, "system"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/a$a;->b:Lcom/miui/antivirus/model/a$a;

    invoke-interface {p2, v2}, Lo2/g$i;->j(Lcom/miui/antivirus/model/a$a;)V

    invoke-direct {p0, p2}, Lo2/g;->z0(Lo2/g$i;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lo2/g;->r:J

    invoke-interface {p2}, Lo2/g$i;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lo2/g$i;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    const-string v0, "PaySafetyCheckManager"

    const-string v1, "sms auth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/miui/antivirus/model/a$a;->c:Lcom/miui/antivirus/model/a$a;

    invoke-interface {p2, v2}, Lo2/g$i;->j(Lcom/miui/antivirus/model/a$a;)V

    invoke-virtual {p0, p2}, Lo2/g;->l0(Lo2/g$i;)V

    invoke-direct {p0, p2}, Lo2/g;->t(Lo2/g$i;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lo2/g;->s:J

    invoke-interface {p2}, Lo2/g$i;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Lo2/g$i;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    :try_start_6
    const-string v0, "PaySafetyCheckManager"

    const-string v1, "virus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/model/a$a;->d:Lcom/miui/antivirus/model/a$a;

    invoke-interface {p2, v0}, Lo2/g$i;->j(Lcom/miui/antivirus/model/a$a;)V

    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/miui/antivirus/model/a$a;->e:Lcom/miui/antivirus/model/a$a;

    invoke-interface {p2, v0}, Lo2/g$i;->j(Lcom/miui/antivirus/model/a$a;)V

    :cond_5
    iget-object v0, p0, Lo2/g;->c:Lcom/miui/guardprovider/VirusObserver;

    invoke-virtual {v0, p2}, Lcom/miui/guardprovider/VirusObserver;->p8(Lo2/g$i;)V

    iget-object v0, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lo2/g;->x:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    iget-object v5, p0, Lo2/g;->c:Lcom/miui/guardprovider/VirusObserver;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v8}, Lo2/g;->x0(Lcom/miui/guardprovider/aidl/IAntiVirusServer;[Ljava/lang/String;Lcom/miui/guardprovider/VirusObserver;Lo2/g$i;J)V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_7

    invoke-interface {p2}, Lo2/g$i;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p2}, Lo2/g$i;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    :try_start_7
    const-string p1, "PaySafetyCheckManager"

    const-string v0, "sign"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lo2/g$g;

    iget-object v0, p0, Lo2/g;->v:Lorg/json/JSONArray;

    iget-object v1, p0, Lo2/g;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p1, p0, p2, v0, v1}, Lo2/g$g;-><init>(Lo2/g;Lo2/g$i;Lorg/json/JSONArray;I)V

    iput-object p1, p0, Lo2/g;->b:Lo2/g$g;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_8
    const-string p2, "PaySafetyCheckManager"

    const-string v0, "Exception : error = "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lo2/g;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lo2/g;->h:Lcom/miui/antivirus/model/d;

    return-void
.end method
