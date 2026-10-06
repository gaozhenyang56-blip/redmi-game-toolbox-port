.class Lmiuix/provision/ProvisionBaseActivity$a;
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

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->c0(Lmiuix/provision/ProvisionBaseActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->w0()V

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->y()V

    return-void

    :cond_1
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "OobeUtil2"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1, v0}, Lmiuix/provision/ProvisionBaseActivity;->G0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseActivity;->d0(Lmiuix/provision/ProvisionBaseActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lmiuix/provision/ProvisionBaseActivity$a$a;

    invoke-direct {v2, p0}, Lmiuix/provision/ProvisionBaseActivity$a$a;-><init>(Lmiuix/provision/ProvisionBaseActivity$a;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->s0()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "other anim not end"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->r0()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "video anim not end"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_0
    const-string p1, "begin start OOBSETTINGS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object v1, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseActivity;->j0()I

    move-result p1

    invoke-virtual {v1, p1}, Lmiuix/provision/a;->l(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseActivity$a;->a:Lmiuix/provision/ProvisionBaseActivity;

    iget-object p1, p1, Lmiuix/provision/ProvisionBaseActivity;->o:Lmiuix/provision/a;

    invoke-virtual {p1, v0}, Lmiuix/provision/a;->h(I)Z

    :cond_5
    return-void
.end method
