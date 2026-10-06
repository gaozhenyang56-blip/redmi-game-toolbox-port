.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Ljava/util/ArrayList<",
        "Lpe/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic q:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;->q:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-direct {p0, p2}, Lw4/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;->J()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lpe/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$g;->q:Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;->e0(Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
