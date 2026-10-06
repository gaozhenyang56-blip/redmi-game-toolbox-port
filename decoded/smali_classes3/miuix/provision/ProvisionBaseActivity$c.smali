.class Lmiuix/provision/ProvisionBaseActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseActivity;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->e0(Lmiuix/provision/ProvisionBaseActivity;)Z

    move-result p1

    const-string v0, "OobeUtil2"

    if-nez p1, :cond_0

    const-string p1, " mBackListener fast click "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->j()V

    return-void

    :cond_1
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->d0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lmiuix/provision/ProvisionBaseActivity$c$a;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionBaseActivity$c$a;-><init>(Lmiuix/provision/ProvisionBaseActivity$c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.miui.voicetrigger"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->k0()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->j()V

    return-void

    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->s0()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "other anim not end"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "begin back OOBSETTINGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object v0, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->j0()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/provision/a;->l(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$c;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object p1, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {p1}, Lmiuix/provision/a;->g()Z

    :cond_4
    return-void
.end method
