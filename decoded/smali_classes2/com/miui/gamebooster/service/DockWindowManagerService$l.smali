.class Lcom/miui/gamebooster/service/DockWindowManagerService$l;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$l$b;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$l;Landroid/content/Context;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DockWindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.miui.FREEFORM_WINDOW_CLOSED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v2

    invoke-virtual {v2}, Ls8/h;->l0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, La8/a0;->v()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "window_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->E(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    goto/16 :goto_4

    :cond_0
    const-string v2, "com.miui.securitycenter.intent.action.NOTIFY_DIVING_MODE_EXCEPTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "StartFailFor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const v1, 0x7f120f30

    :goto_0
    invoke-static {v0, p1, v1, v5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->F(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_1
    const-string v0, "StopFailFor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const v1, 0x7f120f2f

    invoke-static {v0, p1, v1, v4}, Lcom/miui/gamebooster/service/DockWindowManagerService;->F(Lcom/miui/gamebooster/service/DockWindowManagerService;Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_2
    const-string v0, "ExitFor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const v1, 0x7f120f2e

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_4
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v2

    invoke-virtual {v2}, Lo7/a;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v6, v2, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v6, :cond_5

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->G(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v4}, Lcom/miui/gamebooster/service/DockWindowManagerService;->I(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    goto/16 :goto_4

    :cond_5
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-boolean v6, v2, Lcom/miui/gamebooster/service/DockWindowManagerService;->c:Z

    if-eqz v6, :cond_8

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->H(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object v2

    invoke-virtual {v2}, Lo7/a;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lx4/a0;->A(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "setScreenEffect invalid!!!"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-static {}, Lj8/p;->b()V

    invoke-static {}, Li8/c;->x()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x3eb

    invoke-static {p1}, Lj8/p;->l(I)V

    goto :goto_2

    :cond_7
    invoke-static {v5}, Lj8/g;->s(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->I(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    goto/16 :goto_4

    :cond_8
    const-string v2, "miui.intent.action.ACTION_SYSTEM_UI_DOLBY_EFFECT_SWITCH"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object p1

    invoke-virtual {p1}, Lo7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->r(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ls8/h;->y0(Z)V

    goto/16 :goto_4

    :cond_9
    const-string v2, "miui.intent.action.ACTION_AUDIO_EFFECT_REFRESH"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->m(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->Y(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lo7/a;

    move-result-object p1

    invoke-virtual {p1}, Lo7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p1

    const-string v0, "bundle"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ls8/h;->z0(Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_a
    const-string v2, "action_toast_booster_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->G()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->P()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120ae9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ls8/u;->a0(Ljava/lang/String;Ls8/h;)V

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->c0()V

    :goto_3
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iput-boolean v4, p1, Lcom/miui/gamebooster/service/DockWindowManagerService;->s:Z

    goto/16 :goto_4

    :cond_b
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_toast_booster_fail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->J(Lcom/miui/gamebooster/service/DockWindowManagerService;)Z

    move-result p2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p1

    invoke-virtual {p1}, Ls8/u;->V()V

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v5}, Lcom/miui/gamebooster/service/DockWindowManagerService;->K(Lcom/miui/gamebooster/service/DockWindowManagerService;Z)Z

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_toast_common_message"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "key_toast_common_message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ls8/u;->a0(Ljava/lang/String;Ls8/h;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action_toast_wonderful_moment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/miui/gamebooster/utils/a;->C0()V

    const-string v0, "match_video_count"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object v0

    const v1, 0x7f120a43

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService$l$a;-><init>(Lcom/miui/gamebooster/service/DockWindowManagerService$l;Landroid/content/Context;Landroid/content/Intent;)V

    const/16 p1, 0x1388

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Ls8/u;->b0(Ljava/lang/String;Ls8/u$d;ILs8/h;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v2, "action_toast_wlan_speed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->M(Lcom/miui/gamebooster/service/DockWindowManagerService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Ls8/u;->D(Landroid/content/Context;Landroid/os/Handler;)Ls8/u;

    move-result-object p2

    const v0, 0x7f120bff

    invoke-static {p1, v0}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->X(Lcom/miui/gamebooster/service/DockWindowManagerService;)Ls8/h;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ls8/u;->a0(Ljava/lang/String;Ls8/h;)V

    goto :goto_4

    :cond_10
    const-string p2, "miui.intent.action.RESTORE_BRIGHTNESS"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, La8/g0;->s()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {}, Lf6/a;->a()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {}, La8/o0;->g()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {p1}, Lf6/a;->c(Landroid/content/Context;)V

    invoke-static {v5}, La8/o0;->r(Z)V

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$l;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->L(Lcom/miui/gamebooster/service/DockWindowManagerService;Ljava/lang/String;I)V

    :cond_12
    :goto_4
    return-void
.end method
