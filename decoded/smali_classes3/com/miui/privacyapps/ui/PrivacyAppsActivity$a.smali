.class Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/List<",
        "Lpe/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->J()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpe/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v4}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->d0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lmiui/security/SecurityManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/security/SecurityManager;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Lpe/c;

    invoke-direct {v6}, Lpe/c;-><init>()V

    invoke-virtual {v6, v5}, Lpe/c;->j(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lpe/c;->m(I)V

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lpe/c;->h(Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v2}, Lse/a;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->e0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Z)Z

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$a;->q:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->g0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lse/a;

    move-result-object v2

    invoke-virtual {v2}, Lse/a;->c()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->f0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Z)Z

    return-object v0
.end method
