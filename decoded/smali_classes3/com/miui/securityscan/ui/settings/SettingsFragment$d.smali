.class Lcom/miui/securityscan/ui/settings/SettingsFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/securityscan/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/settings/SettingsFragment;Lcom/miui/securityscan/ui/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$d;->b:Lcom/miui/securityscan/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/settings/SettingsFragment$d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
