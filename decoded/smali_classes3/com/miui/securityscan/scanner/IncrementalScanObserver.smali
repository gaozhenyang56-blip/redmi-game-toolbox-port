.class public final Lcom/miui/securityscan/scanner/IncrementalScanObserver;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"

# interfaces
.implements Lo4/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/IncrementalScanObserver$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIncrementalScanObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncrementalScanObserver.kt\ncom/miui/securityscan/scanner/IncrementalScanObserver\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,117:1\n13644#2,3:118\n*S KotlinDebug\n*F\n+ 1 IncrementalScanObserver.kt\ncom/miui/securityscan/scanner/IncrementalScanObserver\n*L\n67#1:118,3\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/miui/securityscan/scanner/IncrementalScanObserver$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Lrf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/miui/guardprovider/aidl/IAntiVirusServer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/scanner/IncrementalScanObserver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->q:Lcom/miui/securityscan/scanner/IncrementalScanObserver$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;-><init>(Lrf/e;ILbk/g;)V

    return-void
.end method

.method public constructor <init>(Lrf/e;)V
    .locals 1
    .param p1    # Lrf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    invoke-static {}, Lw2/t;->u()Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "getScanWhiteList()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lrf/e;ILbk/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;-><init>(Lrf/e;)V

    return-void
.end method


# virtual methods
.method public R0([Lcom/miui/guardprovider/aidl/VirusInfo;)V
    .locals 13
    .param p1    # [Lcom/miui/guardprovider/aidl/VirusInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->R0([Lcom/miui/guardprovider/aidl/VirusInfo;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->p:Z

    const/16 v1, 0xa

    const-string v2, "IncrementalScanObserver-s"

    if-eqz v0, :cond_1

    const-string p1, "incremental scan finish return canceled"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Lrf/e;->c(Ljava/util/List;I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incremental scan finish ==2\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v3, p1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/securityscan/scanner/ScoreManager;->d()V

    :cond_3
    if-eqz p1, :cond_7

    array-length v3, p1

    move v4, v0

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "virusInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/miui/antivirus/model/i;

    invoke-direct {v8}, Lcom/miui/antivirus/model/i;-><init>()V

    iget-object v9, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v9, v10}, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->q8(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lo2/b$c;->a:Lo2/b$c;

    goto :goto_2

    :cond_4
    sget-object v9, Lo2/b$c;->b:Lo2/b$c;

    :goto_2
    invoke-virtual {v8, v9}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    iget-object v9, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v9

    iget-object v10, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v9

    invoke-static {v9}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v9

    iget v10, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {v9, v10}, Lo2/b;->h(I)Lo2/b$d;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/antivirus/model/i;->q(Lo2/b$d;)V

    iget v10, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->virusLevel:I

    invoke-virtual {v8, v10}, Lcom/miui/antivirus/model/i;->n(I)V

    iget-object v10, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->path:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    sget-object v10, Lo2/b$d;->a:Lo2/b$d;

    if-eq v9, v10, :cond_5

    invoke-virtual {v8}, Lcom/miui/antivirus/model/i;->f()Lo2/b$c;

    move-result-object v11

    sget-object v12, Lo2/b$c;->a:Lo2/b$c;

    if-ne v11, v12, :cond_5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v11

    iget-object v12, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    invoke-static {v11, v12}, Le3/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->n:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8, v10}, Lcom/miui/antivirus/model/i;->q(Lo2/b$d;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not report because installer is in white list! installer = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", virusLevel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, v6, Lcom/miui/guardprovider/aidl/VirusInfo;->virusDescription:Ljava/lang/String;

    invoke-virtual {v8, v6}, Lcom/miui/antivirus/model/i;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/miui/securityscan/scanner/ScoreManager;->c(Lcom/miui/antivirus/model/i;)V

    iget-object v6, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    if-eqz v6, :cond_6

    array-length v9, p1

    invoke-interface {v6, v5, v9, v8}, Lrf/e;->a(IILjava/lang/Object;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/miui/securityscan/scanner/ScoreManager;->S(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager;->R()V

    sget-object p1, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/scanner/o;->M(Z)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->m()V

    iget-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Lrf/e;->c(Ljava/util/List;I)V

    :cond_8
    iget-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->o:Landroid/os/Handler;

    if-eqz p1, :cond_9

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    const-string p1, "after finish scan"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Z0(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->Z0(I)V

    iget-boolean p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->p:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Lrf/e;->c(Ljava/util/List;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanStart: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IncrementalScanObserver-s"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lrf/e;->d()V

    :cond_2
    return-void
.end method

.method public final q8(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "IncrementalScanObserver-s"

    const-string v1, "isInstalled exp"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final r8(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->p:Z

    return-void
.end method

.method public final s8(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->o:Landroid/os/Handler;

    return-void
.end method

.method public final t8(Lrf/e;)V
    .locals 0
    .param p1    # Lrf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->l:Lrf/e;

    return-void
.end method

.method public v1(Landroid/os/IBinder;)Z
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "IncrementalScanObserver-s"

    invoke-static {p1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/IncrementalScanObserver;->m:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "startIncrementalScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->J1(Lcom/miui/guardprovider/aidl/IVirusObserver;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "incrementalCacheScan failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
