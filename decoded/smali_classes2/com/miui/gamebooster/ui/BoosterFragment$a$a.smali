.class Lcom/miui/gamebooster/ui/BoosterFragment$a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment$a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment$a;

    iget-object p1, p1, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    const-string v1, "xunyou"

    const-string v2, "xunyou_wifi_accel_switch"

    const-string v3, "false"

    invoke-interface {v0, v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSettingEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->k0(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment$a;

    iget-object p1, p1, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->h0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lm6/a;->o0(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
