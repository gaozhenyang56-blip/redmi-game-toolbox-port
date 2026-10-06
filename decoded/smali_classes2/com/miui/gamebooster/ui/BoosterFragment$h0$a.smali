.class Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$h0;->onVpnStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/miui/gamebooster/ui/BoosterFragment$h0;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$h0;Lcom/miui/gamebooster/ui/BoosterFragment;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->d:Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput p3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->b:I

    iput-object p4, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->n1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "detailUrl"

    if-nez v1, :cond_0

    :try_start_1
    iget v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->b:I

    const/16 v5, 0x64

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/miui/gamebooster/ui/BoosterFragment;->w1(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->p1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->n1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/miui/gamebooster/ui/BoosterFragment$u;->a:[I

    iget-object v5, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/BoosterFragment;->x1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/service/a0;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    const/4 v5, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->w1(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->y1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object v0

    const/16 v1, 0x6f

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    :goto_0
    invoke-static {v0, v5}, Lcom/miui/gamebooster/ui/BoosterFragment;->p1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z

    goto/16 :goto_1

    :cond_2
    iget v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->b:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->c:Ljava/lang/String;

    invoke-static {v1, v0}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u65f6\u95f4\u6233\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->c:Ljava/lang/String;

    invoke-static {v4, v0}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, La8/o0;->B(J)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->S6()V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0, v5}, Lcom/miui/gamebooster/ui/BoosterFragment;->p1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->y1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object v0

    const/16 v1, 0x70

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->refreshUserState()I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->e:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->y1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->y1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->j0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$h0$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
