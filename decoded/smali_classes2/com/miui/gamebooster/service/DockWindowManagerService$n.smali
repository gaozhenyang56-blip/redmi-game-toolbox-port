.class Lcom/miui/gamebooster/service/DockWindowManagerService$n;
.super Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic o8(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.circulate.world.AppCirculateActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ls8/h;->c0(ZZ)V

    :cond_0
    return-void
.end method

.method public static synthetic v1(Lcom/miui/gamebooster/service/DockWindowManagerService$n;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->o8(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityChanged: curName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tpreName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$n;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/gamebooster/service/p;

    invoke-direct {v0, p0, p2}, Lcom/miui/gamebooster/service/p;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$n;Landroid/content/ComponentName;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
