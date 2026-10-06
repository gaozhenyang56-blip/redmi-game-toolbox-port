.class public Lzi/n7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lzi/n7;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzi/p7;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzi/n7;->b:Ljava/util/Map;

    iput-object p1, p0, Lzi/n7;->a:Landroid/content/Context;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lzi/n7;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed."

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lzi/n7;->c:Lzi/n7;

    if-nez v0, :cond_2

    const-class v0, Lzi/n7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lzi/n7;->c:Lzi/n7;

    if-nez v1, :cond_1

    new-instance v1, Lzi/n7;

    invoke-direct {v1, p0}, Lzi/n7;-><init>(Landroid/content/Context;)V

    sput-object v1, Lzi/n7;->c:Lzi/n7;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lzi/n7;->c:Lzi/n7;

    return-object p0
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzi/p7;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzi/n7;->b:Ljava/util/Map;

    return-object v0
.end method

.method c()Lzi/p7;
    .locals 2

    iget-object v0, p0, Lzi/n7;->b:Ljava/util/Map;

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/p7;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lzi/n7;->b:Ljava/util/Map;

    const-string v1, "UPLOADER_HTTP"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/p7;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lzi/p7;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "[TinyDataManager]: please do not add null mUploader to TinyDataManager."

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lzi/n7;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lzi/u7;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "pkgName is null or empty, upload ClientUploadDataItem failed."

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1, v1}, Lcom/xiaomi/push/service/f1;->f(Lzi/u7;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/push/service/f1;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzi/u7;->E(Ljava/lang/String;)Lzi/u7;

    :cond_2
    invoke-virtual {p1, p2}, Lzi/u7;->G(Ljava/lang/String;)Lzi/u7;

    iget-object p2, p0, Lzi/n7;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/xiaomi/push/service/g1;->a(Landroid/content/Context;Lzi/u7;)V

    const/4 p1, 0x1

    return p1
.end method
