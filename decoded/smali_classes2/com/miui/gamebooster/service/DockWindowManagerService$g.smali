.class Lcom/miui/gamebooster/service/DockWindowManagerService$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$g;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$g;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$g;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {v0}, Ls8/h;->E()V

    :cond_0
    return-void
.end method
