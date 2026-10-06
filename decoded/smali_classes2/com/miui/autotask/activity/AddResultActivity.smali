.class public Lcom/miui/autotask/activity/AddResultActivity;
.super Lcom/miui/autotask/activity/AddBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/AddBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected d0()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/autotask/fragment/AddResultFragment;

    invoke-direct {v0}, Lcom/miui/autotask/fragment/AddResultFragment;-><init>()V

    return-object v0
.end method
