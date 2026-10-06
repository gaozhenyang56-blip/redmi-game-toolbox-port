.class Lmiuix/provision/ProvisionBaseActivity$b;
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

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->V()V

    return-void

    :cond_0
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    const-string v0, "OobeUtil2"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->d0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lmiuix/provision/ProvisionBaseActivity$b$a;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionBaseActivity$b$a;-><init>(Lmiuix/provision/ProvisionBaseActivity$b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->s0()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "other anim not end"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->r0()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "video anim not end"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_0
    const-string p1, "begin start OOBSETTINGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object v0, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->j0()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/provision/a;->l(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$b;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object p1, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/provision/a;->h(I)Z

    :cond_4
    return-void
.end method
