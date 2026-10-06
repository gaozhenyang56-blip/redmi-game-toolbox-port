.class Lcom/miui/securitycenter/service/AutoScanGameJobService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/AutoScanGameJobService;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic k:Landroid/content/Context;

.field final synthetic l:Lcom/miui/securitycenter/service/AutoScanGameJobService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/AutoScanGameJobService;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;->l:Lcom/miui/securitycenter/service/AutoScanGameJobService;

    iput-object p2, p0, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;->k:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v1(Landroid/os/IBinder;)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/gamebooster/service/IGameBooster$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gameBooster :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoScanGameJobService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;->a:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/miui/gamebooster/service/IGameBooster;->Z1(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/securitycenter/service/AutoScanGameJobService$a;->k:Landroid/content/Context;

    invoke-static {p1}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object p1

    invoke-virtual {p1}, La8/i0;->d()V

    return v1
.end method
