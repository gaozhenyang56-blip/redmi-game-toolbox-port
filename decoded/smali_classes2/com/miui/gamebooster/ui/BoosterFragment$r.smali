.class Lcom/miui/gamebooster/ui/BoosterFragment$r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->h2()V
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

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "gb_intent_xunyouuser"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->m1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {}, Ln6/a;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->o1(Lcom/miui/gamebooster/ui/BoosterFragment;Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result p1

    invoke-static {p1}, Lm6/a;->D0(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->l1(Lcom/miui/gamebooster/ui/BoosterFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->B0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->A0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->A0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->B0(Lcom/miui/gamebooster/ui/BoosterFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->setBusinessText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1, p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->q1(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/gamebooster/ui/BoosterFragment;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$r;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object p1

    const/16 p2, 0x70

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method
