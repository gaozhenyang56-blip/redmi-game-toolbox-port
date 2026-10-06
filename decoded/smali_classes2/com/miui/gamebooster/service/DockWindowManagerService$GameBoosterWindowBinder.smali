.class public Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;
.super Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameBoosterWindowBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;-><init>()V

    return-void
.end method

.method public static synthetic o8(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->s8(I)V

    return-void
.end method

.method public static synthetic p8(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->r8(IZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic q8(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->t8(ZZ)V

    return-void
.end method

.method private synthetic r8(IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->R(Lcom/miui/gamebooster/service/DockWindowManagerService;IZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic s8(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->k0(I)V

    return-void
.end method

.method private synthetic t8(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls8/h;->T0(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: slip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\tstartFreeFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockWindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p1

    invoke-virtual {p1}, Ls8/h;->m1()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p1

    invoke-virtual {p1}, Ls8/h;->G0()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public D4(IZLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/miui/gamebooster/service/t;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/gamebooster/service/t;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;IZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public G4(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/r;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/service/r;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Q3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object v0, v0, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b5()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder$a;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w0(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/gamebooster/service/s;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
