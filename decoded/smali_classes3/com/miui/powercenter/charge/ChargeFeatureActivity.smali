.class public Lcom/miui/powercenter/charge/ChargeFeatureActivity;
.super Lcom/miui/common/base/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/charge/ChargeFeatureFragment;

    invoke-direct {v0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment;-><init>()V

    return-object v0
.end method
