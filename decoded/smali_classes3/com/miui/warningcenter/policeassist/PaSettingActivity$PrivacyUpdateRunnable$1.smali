.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;

.field final synthetic val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

.field final synthetic val$updateInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable;

    iput-object p2, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iput-object p3, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$updateInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121c53

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://privacy.mi.com/emergency_location/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$activity:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iget-object v3, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;->val$updateInfo:Ljava/lang/String;

    new-instance v7, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;

    invoke-direct {v7, p0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1$1;-><init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity$PrivacyUpdateRunnable$1;)V

    const-string v4, "emergency_location"

    invoke-static/range {v2 .. v7}, Lcom/miui/earthquakewarning/utils/Utils;->showPrivacyUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    :cond_1
    :goto_0
    return-void
.end method
