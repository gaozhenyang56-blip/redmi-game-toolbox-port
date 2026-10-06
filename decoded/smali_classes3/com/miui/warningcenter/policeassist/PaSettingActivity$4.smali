.class Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/PaSettingActivity;->showPopupMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

.field final synthetic val$agreementUrl:Ljava/lang/String;

.field final synthetic val$privacyUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iput-object p2, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$privacyUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$agreementUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$title:Ljava/lang/String;

    const-string v1, "emergency_location"

    invoke-static {p1, p1, v0, v1}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$400(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$privacyUrl:Ljava/lang/String;

    :goto_0
    invoke-static {p1, v0}, Lcom/miui/warningcenter/policeassist/PaSettingActivity;->access$500(Lcom/miui/warningcenter/policeassist/PaSettingActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->this$0:Lcom/miui/warningcenter/policeassist/PaSettingActivity;

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/PaSettingActivity$4;->val$agreementUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
