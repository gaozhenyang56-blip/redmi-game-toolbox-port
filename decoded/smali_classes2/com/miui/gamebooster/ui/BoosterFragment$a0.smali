.class Lcom/miui/gamebooster/ui/BoosterFragment$a0;
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

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "click"

    const-string v0, "open_now"

    invoke-static {p2, v0}, Lcom/miui/gamebooster/utils/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "not_remind"

    invoke-static {p2, p1}, Lcom/miui/gamebooster/utils/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gamebooster_netbooster_open_nomore"

    invoke-static {p1, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    :cond_0
    invoke-static {v0}, Lm6/a;->n0(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->A0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object p1

    sget-object p2, Ln6/f;->b:Ln6/f;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->f(Ln6/f;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a0;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->h0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->c2(Ljava/lang/Boolean;)V

    return-void
.end method
