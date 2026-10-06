.class Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DateUtil;->getDateFormat(I)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_gamebooster_red_point_press"

    invoke-static {v1, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "click"

    const-string v1, "homepage_sign_in"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/utils/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->q0()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->k0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$d;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->l0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V

    :goto_0
    return-void
.end method
