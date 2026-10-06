.class Lcom/miui/securityscan/scanner/CacheCheckManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/CacheCheckManager;->c(Lcom/miui/securityscan/scanner/k$m;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

.field final synthetic b:Lcom/miui/securityscan/scanner/k$m;

.field final synthetic c:Lcom/miui/securityscan/scanner/CacheCheckManager;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/CacheCheckManager;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/k$m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->c:Lcom/miui/securityscan/scanner/CacheCheckManager;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->a:Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->b:Lcom/miui/securityscan/scanner/k$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lc4/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc4/j;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.miui.cleanmaster"

    const-string v1, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/scanner/CacheCheckManager$a;->c:Lcom/miui/securityscan/scanner/CacheCheckManager;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/CacheCheckManager;->a(Lcom/miui/securityscan/scanner/CacheCheckManager;)Lo4/a;

    move-result-object v2

    new-instance v3, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;

    invoke-direct {v3, p0}, Lcom/miui/securityscan/scanner/CacheCheckManager$a$a;-><init>(Lcom/miui/securityscan/scanner/CacheCheckManager$a;)V

    invoke-virtual {v2, v1, v0, v3}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    return-void
.end method
