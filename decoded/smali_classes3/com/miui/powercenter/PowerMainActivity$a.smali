.class Lcom/miui/powercenter/PowerMainActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/PowerMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/os/Handler;ZLandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/PowerMainActivity$a;->a:Landroid/os/Handler;

    iput-boolean p2, p0, Lcom/miui/powercenter/PowerMainActivity$a;->b:Z

    iput-object p3, p0, Lcom/miui/powercenter/PowerMainActivity$a;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/PowerMainActivity$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/PowerMainActivity$a;->c:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lhd/a;->l(Ljava/lang/String;)V

    const-string v1, "LowBatteryNotification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lhd/a;->F0()V

    goto :goto_0

    :cond_1
    const-string v1, "exit_power_save_mode_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lhd/a;->n0()V

    :cond_2
    :goto_0
    invoke-static {}, Lme/e0;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lme/h;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lhd/a;->o()V

    :cond_3
    :goto_1
    return-void
.end method
