.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/Utils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;->this$1:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAgreePrivacyChange()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;->this$1:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;

    iget-object v0, v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/policeassist/EPSManager;->setEPSPoliceAssistToggle(Landroid/content/Context;Z)V

    return-void
.end method

.method public onRefusePrivacyChange()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;->this$1:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;

    iget-object v0, v0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
