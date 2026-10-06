.class Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;
.super Lcom/miui/common/base/asyn/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initOperator$9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

.field final synthetic val$city:Ljava/lang/String;

.field final synthetic val$finalPackageType:I

.field final synthetic val$province:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$province:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$city:Ljava/lang/String;

    iput p5, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$finalPackageType:I

    invoke-direct {p0, p2}, Lcom/miui/common/base/asyn/b;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public runOnUiThread()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2100(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$province:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$city:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$city:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$province:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2100(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2200(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2300(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$finalPackageType:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2400(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->val$finalPackageType:I

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2502(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2602(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2200(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;->this$0:Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {v0, v3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->access$2702(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I

    :goto_3
    return-void
.end method
