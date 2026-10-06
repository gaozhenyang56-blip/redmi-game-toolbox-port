.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$2;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
