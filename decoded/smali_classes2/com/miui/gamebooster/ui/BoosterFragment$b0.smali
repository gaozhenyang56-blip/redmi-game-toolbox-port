.class Lcom/miui/gamebooster/ui/BoosterFragment$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->Z1(Ljava/lang/Boolean;)V
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

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p2, "click"

    const-string v0, "cancle"

    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "not_remind"

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string p2, "gamebooster_netbooster_open_nomore"

    invoke-static {p2, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->Z0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-virtual {p2}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->r0()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$b0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->z1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const v2, 0x186a0

    div-int/2addr v1, v2

    invoke-static {v1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, La8/k0;->k(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method
