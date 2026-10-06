.class Lcom/miui/gamebooster/service/DockWindowManagerService$b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b0"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/miui/gamebooster/service/DockWindowManagerService$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {}, La8/z;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->q(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->S(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->T(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$b0;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->U(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    return-void
.end method
