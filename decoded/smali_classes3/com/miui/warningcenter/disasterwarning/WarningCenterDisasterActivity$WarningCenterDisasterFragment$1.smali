.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$000(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$100(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Landroidx/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$200(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$300(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$400(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$500(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;->access$600(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment$1;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterActivity$WarningCenterDisasterFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterSubscribeAreaActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
