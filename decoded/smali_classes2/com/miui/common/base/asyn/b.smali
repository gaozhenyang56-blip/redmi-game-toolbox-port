.class public abstract Lcom/miui/common/base/asyn/b;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/common/base/asyn/b;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/common/base/asyn/b;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/asyn/b;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/base/asyn/b;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/common/base/asyn/b;->runOnUiThread()V

    :cond_1
    return-void
.end method

.method protected abstract runOnUiThread()V
.end method
