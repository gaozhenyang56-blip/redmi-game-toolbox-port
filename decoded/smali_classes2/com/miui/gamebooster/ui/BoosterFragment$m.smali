.class Lcom/miui/gamebooster/ui/BoosterFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->o2(ZLcom/miui/gamebooster/model/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$m;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput-boolean p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    const-string p2, "click"

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$m;->a:Z

    const/4 v0, 0x1

    const-string v1, "not_remind"

    if-nez p1, :cond_0

    invoke-static {p2, v1}, Lcom/miui/gamebooster/utils/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gamebooster_free_send_netbooster_open_nomore"

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, Lcom/miui/gamebooster/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gt_xunyou_net_booster_try_again_dialog_show_again"

    :goto_0
    invoke-static {p1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$m;->a:Z

    const-string v0, "cancle"

    if-nez p1, :cond_2

    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
