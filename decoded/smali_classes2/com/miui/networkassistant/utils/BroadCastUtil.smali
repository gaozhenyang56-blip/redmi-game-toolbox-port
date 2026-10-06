.class public Lcom/miui/networkassistant/utils/BroadCastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BROADCAST_CORRECTION_BILL:Ljava/lang/String; = "com.miui.networkassistant.CORRECTION"

.field private static final BROADCAST_CORRECTION_FAILED:Ljava/lang/String; = "com.miui.networkassistant.CORRECTION_FAILED"

.field private static final BROADCAST_CORRECTION_SUCCESS:Ljava/lang/String; = "com.miui.networkassistant.CORRECTION_SUCCEED"

.field private static final BROADCAST_NEWWORK_LIMIT:Ljava/lang/String; = "com.miui.phone.TRAFFIC_LIMIT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBroadCastNetworkLimitToPhone(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.phone.TRAFFIC_LIMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "slotNum"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "limit_status"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendCorrectionFailedToCarrier(Landroid/content/Context;IZ)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.networkassistant.CORRECTION_FAILED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionResult(Landroid/content/Context;II)V

    return-void
.end method

.method public static sendCorrectionResult(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.networkassistant.CORRECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "correctionType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "result"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static sendCorrectionSucceedToCarrier(Landroid/content/Context;IZ)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.networkassistant.CORRECTION_SUCCEED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "miui.permission.EXTRA_NETWORK"

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionResult(Landroid/content/Context;II)V

    return-void
.end method
