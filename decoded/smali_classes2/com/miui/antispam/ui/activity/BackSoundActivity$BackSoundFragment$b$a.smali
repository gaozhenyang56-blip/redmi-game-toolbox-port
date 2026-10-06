.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/telephony/TelephonyManager;->getPhoneTypeForSlot(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v1, v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    iget v0, v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->a:I

    invoke-static {v1, v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->r0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->d0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget v1, v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->a:I

    const-string v2, "\u7535\u4fe1"

    invoke-static {v2, v1}, Lcom/miui/antispam/util/BackSoundConfig;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v2, v2, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lm2/f;->L(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget v0, v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->a:I

    const-string v1, "\u79fb\u52a8&\u8054\u901a"

    invoke-static {v1, v0}, Lcom/miui/antispam/util/BackSoundConfig;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingOption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v2, v2, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyDebugTool"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->s0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget v5, v2, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->a:I

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    :goto_1
    move v6, v4

    const/4 v7, 0x1

    if-nez v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    iget-object v2, v2, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v2}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->t0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;

    move-result-object v8

    move v4, v1

    move v5, v6

    move v6, v7

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lmiui/telephony/TelephonyManager;->setCallForwardingOption(IIILjava/lang/String;Landroid/os/ResultReceiver;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->u0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b$a;->a:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;

    iget-object v1, v1, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$b;->b:Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    invoke-static {v1}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->u0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
