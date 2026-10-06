.class Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyResultReceiver"
.end annotation


# instance fields
.field private fragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment$MyResultReceiver;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingOption: resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyDebugTool"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->f0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput p1, v1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;->u0(Lcom/miui/antispam/ui/activity/BackSoundActivity$BackSoundFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    return-void
.end method
