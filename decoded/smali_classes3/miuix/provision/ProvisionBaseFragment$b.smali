.class Lmiuix/provision/ProvisionBaseFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/provision/ProvisionBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/provision/ProvisionBaseFragment;


# direct methods
.method constructor <init>(Lmiuix/provision/ProvisionBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseFragment;->c0(Lmiuix/provision/ProvisionBaseFragment;)Z

    move-result p1

    const-string v0, "OobeUtil2"

    if-nez p1, :cond_0

    const-string p1, " mBackListener fast click "

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbm/d;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseFragment;->j()V

    return-void

    :cond_1
    invoke-static {}, Lbm/d;->j()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseFragment;->j()V

    return-void

    :cond_2
    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    iget-boolean p1, p1, Lmiuix/provision/ProvisionBaseFragment;->i:Z

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lbm/d;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/provision/ProvisionBaseFragment;->z0(Z)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    invoke-static {p1}, Lmiuix/provision/ProvisionBaseFragment;->b0(Lmiuix/provision/ProvisionBaseFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lmiuix/provision/ProvisionBaseFragment$b$a;

    invoke-direct {v1, p0}, Lmiuix/provision/ProvisionBaseFragment$b$a;-><init>(Lmiuix/provision/ProvisionBaseFragment$b;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-string p1, "begin start OOBSETTINGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    iget-object v0, p1, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lmiuix/provision/ProvisionBaseFragment;->h0()I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/provision/a;->l(I)V

    iget-object p1, p0, Lmiuix/provision/ProvisionBaseFragment$b;->a:Lmiuix/provision/ProvisionBaseFragment;

    iget-object p1, p1, Lmiuix/provision/ProvisionBaseFragment;->h:Lmiuix/provision/a;

    invoke-virtual {p1}, Lmiuix/provision/a;->g()Z

    :cond_5
    return-void
.end method
