.class Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService$l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iput-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->a:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "com.xiaomi.gamecenter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->a:Landroid/content/Context;

    invoke-static {v0}, La8/j0;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->J(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->N(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object v1, v1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v1}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object v1, v1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v1

    invoke-virtual {p1, v1}, Ls8/u;->d0(Ls8/h;)V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iput-boolean v0, p1, Lcom/miui/gamebooster/service/DockWindowManagerService;->s:Z

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b:Lcom/miui/gamebooster/service/DockWindowManagerService$l;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->K(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method
