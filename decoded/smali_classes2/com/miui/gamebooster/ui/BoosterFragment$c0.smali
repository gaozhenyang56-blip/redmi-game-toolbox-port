.class Lcom/miui/gamebooster/ui/BoosterFragment$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->c2(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$c0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p2, "click"

    const-string v0, "open_now"

    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f0b0477

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "not_remind"

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gamebooster_netbooster_wifi_open_nomore"

    invoke-static {p1, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$c0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p1

    const-string p2, "xunyou"

    const-string v0, "xunyou_wifi_accel_switch"

    const-string v2, "true"

    invoke-interface {p1, p2, v0, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1}, Lm6/a;->o0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$c0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->a1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lzg/a;->a(Landroid/content/Context;)Lzg/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lzg/a;->c(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$c0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->c1(Lcom/miui/gamebooster/ui/BoosterFragment;)V

    return-void
.end method
