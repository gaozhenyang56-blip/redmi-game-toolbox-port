.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070436

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-static {v2}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->G0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->F0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)I

    iget-object v0, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-static {v0}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$b;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-static {v1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->E0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ltb/b;->s(I)V

    return-void
.end method
