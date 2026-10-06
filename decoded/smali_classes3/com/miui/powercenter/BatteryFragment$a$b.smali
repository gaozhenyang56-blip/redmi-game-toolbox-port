.class Lcom/miui/powercenter/BatteryFragment$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/BatteryFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/BatteryFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/BatteryFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment$a$b;->a:Lcom/miui/powercenter/BatteryFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljg/a;->h()Z

    move-result v0

    const-string v1, "open_from_power"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/BatteryFragment$a$b;->a:Lcom/miui/powercenter/BatteryFragment$a;

    iget-object p1, p1, Lcom/miui/powercenter/BatteryFragment$a;->b:Lcom/miui/powercenter/BatteryFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Ljg/a;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "openFrom"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const-string p1, "auto_task"

    invoke-static {p1}, Lhd/a;->O0(Ljava/lang/String;)V

    return-void
.end method
