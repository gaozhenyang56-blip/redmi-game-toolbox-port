.class Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;->showStrongChooseDialog()V
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$5;->this$0:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$5;->val$checkedItems:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity$WarningCenterDisasterInfoFragment$5;->val$checkedItems:[Z

    aput-boolean p3, p1, p2

    return-void
.end method
