.class Lcom/miui/gamebooster/service/GameBoosterService$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/GameBoosterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/u;->i()Z

    move-result v0

    const-string v1, "GameBoosterService"

    if-nez v0, :cond_10

    invoke-static {p1}, La8/z;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string p2, "gb_show_window"

    invoke-static {p2, v4}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v4}, Lm6/a;->B(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    invoke-static {p1}, La8/t1;->c(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lx4/a0;->A(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1, v4}, Lcom/miui/gamebooster/service/GameBoosterService;->A(Lcom/miui/gamebooster/service/GameBoosterService;Z)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->R(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.miui.gamebooster.action.SIGN_NOTIFICATION"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_8

    invoke-static {}, La8/g0;->Y()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "key_gamebooster_signed_day"

    invoke-static {p1, v5}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/l1;->m(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_7
    :goto_2
    return-void

    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.miui.gamebooster.service.action.SWITCHANTIMSG"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object p2, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->i0()V

    goto/16 :goto_3

    :cond_9
    const-string p1, "com.miui.gamebooster.action.STOP_GAMEMODE"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->g0()V

    goto/16 :goto_3

    :cond_a
    const-string p1, "com.miui.gamebooster.action.RESET_USERSTATUS"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const-string p2, "gamebooster_xunyou_first_user"

    invoke-static {p2, v4}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/GameBoosterService;->O(Lcom/miui/gamebooster/service/GameBoosterService;Z)Z

    goto/16 :goto_3

    :cond_b
    const-string p1, "android.intent.action.HEADSET_PLUG"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lm6/a;->l()Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-le p1, v0, :cond_c

    return-void

    :cond_c
    const-string p1, "state"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "headset status:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "audio"

    const-string v0, "gamebooster_head_plug"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_3

    :cond_d
    invoke-static {v0, v4}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$f;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {v0, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_e
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {v5}, Lr8/b;->n(Ljava/lang/String;)V

    invoke-static {v5}, La8/j2;->v(Ljava/lang/String;)V

    :cond_f
    :goto_3
    return-void

    :cond_10
    :goto_4
    const-string p1, "receive when folded"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
