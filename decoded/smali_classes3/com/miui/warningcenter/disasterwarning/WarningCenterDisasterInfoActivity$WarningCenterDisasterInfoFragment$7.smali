.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->showSystemChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

.field final synthetic val$checkedItems:[Z


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->val$checkedItems:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const-string p1, ""

    const/4 p2, 0x0

    move-object v1, p1

    move v0, p2

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {v3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->val$checkedItems:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$700(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u3001"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    rsub-int/lit8 v6, v0, 0x3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)Lmiuix/preference/TextPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/warningcenter/disasterwarning/Utils;->setSystemPushLevel(I)V

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$7;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/Utils;->updateSubscribeLevelService(Landroid/content/Context;)V

    return-void
.end method
