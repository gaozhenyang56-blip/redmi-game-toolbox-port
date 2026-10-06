.class public abstract Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->b:Z

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->b:Z

    return p1
.end method


# virtual methods
.method protected e0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->b:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lx4/d1;->e(Landroid/app/Activity;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-static {p0}, La8/z;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const v1, 0x7f120a80

    invoke-virtual {p1, v0, v1}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method
