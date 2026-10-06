.class Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->showChangePackageTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    const p2, 0x7f121ace

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$1200(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$1400(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;->this$0:Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method
