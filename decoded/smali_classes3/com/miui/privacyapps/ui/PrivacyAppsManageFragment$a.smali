.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->s0(Lpe/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpe/c;

.field final synthetic b:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->b:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->a:Lpe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->b:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->b:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->b:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$a;->a:Lpe/c;

    invoke-static {p1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->b0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V

    :cond_0
    return-void
.end method
