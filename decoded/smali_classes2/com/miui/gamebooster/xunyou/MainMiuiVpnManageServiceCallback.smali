.class public Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->isVpnConnected()Z

    move-result v0

    return v0
.end method

.method public onQueryCouponsResult(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onQueryCouponsResult(ILjava/util/List;)V

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ls7/a;->b()Ls7/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ls7/a;->h(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->k:Lw8/d;

    const/16 v1, 0x7c

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->k:Lw8/d;

    const/16 v1, 0x7b

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :goto_0
    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->k:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " gift:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;

    invoke-direct {v1, p0, p2, v0}, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback$a;-><init>(Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;ILcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;->k:Ljava/lang/String;

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
