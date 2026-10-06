.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showRevokeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

.field final synthetic val$policyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iput-object p2, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;->val$policyName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iget-object p2, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$5;->val$policyName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$600(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V

    return-void
.end method
