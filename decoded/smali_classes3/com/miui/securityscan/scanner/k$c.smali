.class Lcom/miui/securityscan/scanner/k$c;
.super Lcom/miui/securityscan/scanner/CacheCheckManager$CacheScanCallbackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/k;->y(Lcom/miui/securityscan/scanner/k$m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/miui/securityscan/scanner/k;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/CacheCheckManager$CacheScanCallbackAdapter;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/k$c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public U5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Z
    .locals 3

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;-><init>()V

    invoke-virtual {v0, p3}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->setChecked(Z)V

    invoke-virtual {v0, p4, p5}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {v1}, Lcom/miui/securityscan/scanner/k;->i(Lcom/miui/securityscan/scanner/k;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/memory/MemoryModel;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->addInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/scanner/k$c;->a:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryModel;->getMemorySize()J

    move-result-wide v1

    add-long/2addr v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->addInfo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dirPath : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pkgName : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", adviseDel : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/q0;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {p1}, Lcom/miui/securityscan/scanner/k;->a(Lcom/miui/securityscan/scanner/k;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanCacheItem -------------> onStartScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "SecurityManager"

    const-string v1, "startScanCacheItem =============> onFinishScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/k;->g(Lcom/miui/securityscan/scanner/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/scanner/k$c$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/k$c$a;-><init>(Lcom/miui/securityscan/scanner/k$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/k$c;->k:Lcom/miui/securityscan/scanner/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/k;->z(Lrf/i;)V

    return-void
.end method
