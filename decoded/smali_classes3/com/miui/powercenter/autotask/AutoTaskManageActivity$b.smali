.class Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/AutoTaskManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 p2, 0x12c

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTaskManageActivity$b;->a:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_0
    return-void
.end method
