.class public Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.super Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onQueryCouponsResult(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTimeDelay(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 0

    return-void
.end method
