.class Lcom/miui/securityscan/scanner/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/miui/securityscan/scanner/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/scanner/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/securityscan/scanner/c;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/c;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "MIUI_UPDATE"

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/miui/securityscan/scanner/c;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/c;->b:Lcom/miui/securityscan/scanner/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/securityscan/scanner/c;->b:Lcom/miui/securityscan/scanner/c;

    :cond_0
    sget-object p0, Lcom/miui/securityscan/scanner/c;->b:Lcom/miui/securityscan/scanner/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public e(Lrf/e;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/c$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/c$a;-><init>(Lcom/miui/securityscan/scanner/c;Lrf/e;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
