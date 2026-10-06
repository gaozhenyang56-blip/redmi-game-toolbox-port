.class Lcom/miui/securityscan/scanner/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/scanner/m;->k(Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;Lrf/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/miui/securityscan/scanner/k$k;

.field final synthetic c:Lrf/d;

.field final synthetic d:Lcom/miui/securityscan/scanner/m;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/m;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;Lrf/d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$b;->d:Lcom/miui/securityscan/scanner/m;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/m$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/m$b;->b:Lcom/miui/securityscan/scanner/k$k;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/m$b;->c:Lrf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SystemCheckManager"

    const-string v1, "SystemCheckManager startOptimize run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/GroupModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/m$b;->b:Lcom/miui/securityscan/scanner/k$k;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/miui/securityscan/scanner/k$k;->f(Lcom/miui/securityscan/model/GroupModel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$b;->c:Lrf/d;

    invoke-interface {v0}, Lrf/d;->a()V

    return-void
.end method
