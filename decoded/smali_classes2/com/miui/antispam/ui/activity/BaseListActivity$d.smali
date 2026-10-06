.class Lcom/miui/antispam/ui/activity/BaseListActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "main"

    const-string v0, "from"

    const-string v1, "is_black"

    if-nez p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    const-class v3, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-boolean v2, v2, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget v2, v2, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1, p2}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    new-instance p2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    const-class v4, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {p2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-boolean v3, v3, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->l:Ljava/lang/String;

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget v0, v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/activity/BaseListActivity;->q0()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    const-class v0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget-boolean p2, p2, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p2, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    iget v0, v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$d;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-virtual {p2, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method
