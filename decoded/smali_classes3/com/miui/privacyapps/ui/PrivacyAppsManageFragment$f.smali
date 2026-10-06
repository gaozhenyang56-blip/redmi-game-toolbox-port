.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/privacyapps/ui/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILpe/c;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lse/a;

    move-result-object p1

    invoke-virtual {p1}, Lse/a;->a()I

    move-result p1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lse/a;

    move-result-object v0

    invoke-virtual {v0}, Lse/a;->b()Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->d0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->b0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Lpe/c;)V

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$f;->a:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->n0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Lse/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lse/a;->h(Z)V

    :cond_1
    :goto_0
    return-void
.end method
