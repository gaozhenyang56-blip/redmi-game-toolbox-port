.class public Lcom/miui/antifraud/AntiFraudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "AntiFraudReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 v0, 0xd

    if-ge p1, v0, :cond_2

    sget-object p1, Lcom/miui/antifraud/AntiFraudReceiver;->a:Ljava/lang/String;

    const-string p2, "return,because MIUI Version below 13"

    invoke-static {p1, p2}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lef/x;->h()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/miui/antifraud/AntiFraudReceiver;->a:Ljava/lang/String;

    const-string p2, "sms call pay warn not open"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-object p1, Lcom/miui/antifraud/AntiFraudReceiver;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lx4/q0;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p2, "miui.action.mms.SCAN_RISKY_URL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antifraud/d;->q()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/antifraud/d;->k()Lcom/miui/antifraud/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/antifraud/d;->p(Landroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void
.end method
