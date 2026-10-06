.class Lcom/miui/securityscan/scanner/m$c;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private l:I

.field private m:Lrf/e;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private p:Z

.field private q:Landroid/content/Context;

.field private r:Lo4/a;

.field private s:Lo2/b;

.field private t:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

.field private u:Z

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrf/e;ZZLjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/scanner/m$c;->l:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->v:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/m$c;->u:Z

    iput-boolean p4, p0, Lcom/miui/securityscan/scanner/m$c;->w:Z

    iput-object p5, p0, Lcom/miui/securityscan/scanner/m$c;->x:Ljava/lang/String;

    iput p6, p0, Lcom/miui/securityscan/scanner/m$c;->y:I

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/m$c;->x8()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLrf/e;Ljava/util/Map;ZLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lrf/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/securityscan/scanner/m$c;->l:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->v:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    iput-boolean p2, p0, Lcom/miui/securityscan/scanner/m$c;->u:Z

    iput-boolean p5, p0, Lcom/miui/securityscan/scanner/m$c;->w:Z

    iput-object p6, p0, Lcom/miui/securityscan/scanner/m$c;->x:Ljava/lang/String;

    iput p7, p0, Lcom/miui/securityscan/scanner/m$c;->y:I

    invoke-direct {p0, p4}, Lcom/miui/securityscan/scanner/m$c;->y8(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic q8(Lcom/miui/securityscan/scanner/m$c;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/m$c;->t:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    return-object p0
.end method

.method static synthetic r8(Lcom/miui/securityscan/scanner/m$c;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/scanner/m$c;->l:I

    return p0
.end method

.method static synthetic s8(Lcom/miui/securityscan/scanner/m$c;I)I
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/m$c;->l:I

    return p1
.end method

.method static synthetic t8(Lcom/miui/securityscan/scanner/m$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/m$c;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic u8(Lcom/miui/securityscan/scanner/m$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/securityscan/scanner/m$c;->w:Z

    return p0
.end method

.method static synthetic v8(Lcom/miui/securityscan/scanner/m$c;)I
    .locals 0

    iget p0, p0, Lcom/miui/securityscan/scanner/m$c;->y:I

    return p0
.end method

.method static synthetic w8(Lcom/miui/securityscan/scanner/m$c;)Lrf/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    return-object p0
.end method

.method private x8()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/m$c;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/m;->f(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/securityscan/scanner/m$c;->y8(Ljava/util/Map;)V

    return-void
.end method

.method private y8(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    invoke-static {v0}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->s:Lo2/b;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    invoke-static {v0}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->r:Lo4/a;

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->n:Ljava/util/Map;

    invoke-static {}, Lw2/t;->u()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->v:Ljava/util/List;

    return-void
.end method

.method private z8()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/securityscan/scanner/m$c;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/m$c;->r:Lo4/a;

    const-string v2, "com.miui.guardprovider.action.antivirusservice"

    invoke-virtual {v1, v2}, Lo4/a;->h(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/securityscan/scanner/m$c;->p:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public Z0(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->Z0(I)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    invoke-interface {v0}, Lrf/e;->d()V

    const-string v0, "SystemCheckManager"

    const-string v1, "GPObserver onScanStart"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securityscan/scanner/m$c;->b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V

    :cond_0
    return-void
.end method

.method public b7(I[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 1

    const-string p1, "SystemCheckManager"

    const-string p2, "GPObserver onScanFinish"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    const/4 p2, 0x0

    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lrf/e;->c(Ljava/util/List;I)V

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/m$c;->z8()V

    return-void
.end method

.method public q7(II[Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPObserver onScanProgress total : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , current : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemCheckManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    array-length v0, p3

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-object v2, p3, v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPObserver app:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/miui/securityscan/scanner/m$c;->s:Lo2/b;

    iget v3, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {p3, v3}, Lo2/b;->h(I)Lo2/b$d;

    move-result-object p3

    iget-object v3, p0, Lcom/miui/securityscan/scanner/m$c;->n:Ljava/util/Map;

    iget-object v4, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/antivirus/model/i;

    invoke-virtual {v3, p3}, Lcom/miui/antivirus/model/i;->q(Lo2/b$d;)V

    iget-object v4, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->extras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/i;->l(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/i;->s(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/i;->u(Ljava/lang/String;)V

    iget v4, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/i;->n(I)V

    const/4 v4, 0x0

    sget-object v5, Lo2/b$d;->a:Lo2/b$d;

    if-eq p3, v5, :cond_1

    iget-object v4, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    iget-object v6, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v6}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/securityscan/scanner/m$c;->v:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3, v5}, Lcom/miui/antivirus/model/i;->q(Lo2/b$d;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not report because installer is in white list! installer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", virusLevel: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    iget-object v7, p0, Lcom/miui/securityscan/scanner/m$c;->n:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-interface {v6, p1, v7, v3}, Lrf/e;->a(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v5, p3, :cond_3

    :try_start_1
    iget p1, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-static {p1}, Lw2/v;->b(I)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/i;->h()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lw2/p;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lw2/t;->A()Z

    move-result p1

    const-wide/16 v7, 0x0

    const p3, 0x7f1213f5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v9, "all"

    aput-object v9, p2, v0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1, v7, v8}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->q:Landroid/content/Context;

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->engineName:Ljava/lang/String;

    aput-object v9, p2, v0

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string p3, "yyyy-MM-dd"

    invoke-static {p3, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/securityscan/scanner/m$c;->x:Ljava/lang/String;

    iget-object v9, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->virusName:Ljava/lang/String;

    iget-object v10, v2, Lcom/miui/guardprovider/aidl/VirusInfo;->versionName:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lq2/b;->d(Lcom/miui/guardprovider/aidl/VirusInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "GPObserver onScanProgress() InterruptedException "

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_3
    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->t:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget p2, p0, Lcom/miui/securityscan/scanner/m$c;->l:I

    invoke-interface {p1, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->O1(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    const-string p2, "GPObserver onScanProgress() InterruptedException$RemoteException "

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->m:Lrf/e;

    invoke-interface {p1}, Lrf/e;->e()V

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/m$c;->z8()V

    :cond_3
    :goto_3
    return-void
.end method

.method public v1(Landroid/os/IBinder;)Z
    .locals 3

    invoke-static {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m$c;->t:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/miui/securityscan/scanner/m$c$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/m$c$a;-><init>(Lcom/miui/securityscan/scanner/m$c;)V

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "SystemCheckManager"

    const-string v2, "link binder died failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Lcom/miui/securityscan/scanner/m$c$b;

    invoke-direct {p1, p0}, Lcom/miui/securityscan/scanner/m$c$b;-><init>(Lcom/miui/securityscan/scanner/m$c;)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return v0
.end method
