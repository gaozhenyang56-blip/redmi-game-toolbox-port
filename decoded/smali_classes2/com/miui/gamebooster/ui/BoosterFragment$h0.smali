.class Lcom/miui/gamebooster/ui/BoosterFragment$h0;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/BoosterFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->isVpnConnected()Z

    move-result v0

    return v0
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/BoosterFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$h0;Lcom/miui/gamebooster/ui/BoosterFragment;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->i0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/service/a0;

    move-result-object v1

    sget-object v2, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    if-ne v1, v2, :cond_2

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->l0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn booster success"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->j0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->i0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/service/a0;

    move-result-object v1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3ea

    if-ne p2, v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->l0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vpn booster failed"

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "gamebooster_xunyou_cache_expire"

    const/16 v1, 0x66

    if-ne p2, v1, :cond_4

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    if-ne p2, v1, :cond_8

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v0, "gamebooster_xunyou_cache_user_type"

    invoke-static {v0, p3}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " VpnState:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Vpndata:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
