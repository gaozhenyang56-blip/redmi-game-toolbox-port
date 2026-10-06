.class Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->d0()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->n0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->o0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-static {v0}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->p0(Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity$d;->a:Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/activity/AntiSpamSelectAddressesActivity;->f0()V

    :cond_1
    :goto_0
    return-void
.end method
