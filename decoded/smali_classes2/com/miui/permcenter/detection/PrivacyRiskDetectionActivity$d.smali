.class Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-static {p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->H0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;)Ltb/b;

    move-result-object p1

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Ltb/b;->m(I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity$d;->a:Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;

    invoke-static {p2, p1}, Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;->z0(Lcom/miui/permcenter/detection/PrivacyRiskDetectionActivity;I)V

    return-void
.end method
