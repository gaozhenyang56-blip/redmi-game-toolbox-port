.class public interface abstract Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub;,
        Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Default;
    }
.end annotation


# virtual methods
.method public abstract B3()I
.end method

.method public abstract D7(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract H0()I
.end method

.method public abstract I(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;I)V
.end method

.method public abstract M4()I
.end method

.method public abstract N6()Z
.end method

.method public abstract O4(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract Q5(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract R5(ILcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract S(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract T1()V
.end method

.method public abstract W1(Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract W2()V
.end method

.method public abstract b2(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract c2(Z)[B
.end method

.method public abstract detectTimeDelay(Ljava/lang/String;I)V
.end method

.method public abstract f7(Ljava/lang/String;I)V
.end method

.method public abstract getCoupons()V
.end method

.method public abstract getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSettingWithChannel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract h6(Ljava/lang/String;Lcom/miui/networkassistant/vpn/miui/IMiuiVoiceChangeCallback;)V
.end method

.method public abstract h7(Z[B)V
.end method

.method public abstract n4(ILjava/lang/String;I)I
.end method

.method public abstract n8()Ljava/lang/String;
.end method

.method public abstract q2(I)I
.end method

.method public abstract refreshUserState()I
.end method

.method public abstract registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V
.end method

.method public abstract setDSDASwitch(Z)V
.end method

.method public abstract setSetting(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract w4()I
.end method

.method public abstract y4(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/voicechanger/model/VoiceModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract z7(III)I
.end method
