.class public abstract Lcom/miui/common/base/ui/BaseTabFragmentActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/base/ui/BaseTabFragmentActivity$a;
    }
.end annotation


# instance fields
.field protected a:Lmiuix/appcompat/app/ActionBar;

.field protected b:Landroid/app/Activity;

.field protected c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/MessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->d:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->e:Landroid/os/MessageQueue;

    return-void
.end method

.method private c0()V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V

    return-void
.end method

.method private g0()V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->a:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->e0()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->f0(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->a:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$d;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar$d;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$d;

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->d0(I)Lcom/miui/common/base/ui/BaseTabFragmentActivity$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    throw v0
.end method

.method private h0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, "VisibleItemIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->e0()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->a:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract d0(I)Lcom/miui/common/base/ui/BaseTabFragmentActivity$a;
.end method

.method protected abstract e0()I
.end method

.method protected abstract f0(I)Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->g0()V

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->c0()V

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseTabFragmentActivity;->h0()V

    return-void
.end method

.method protected abstract onCustomizeActionBar(Lmiuix/appcompat/app/ActionBar;)V
.end method
