.class Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lak/l<",
        "Ljava/lang/Integer;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Loj/t;
    .locals 4

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->h0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lre/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lre/a;->k(I)Lpe/c;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "enter_from_privacyapps_page"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    const/16 v1, 0x7e5

    invoke-virtual {v0, p1, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lpe/c;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-static {v1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->i0(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lpe/c;->g()I

    move-result p1

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v1, v3}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a:Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->j0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startPrivacyApps error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0}, Lqe/a;->d(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity$b;->a(Ljava/lang/Integer;)Loj/t;

    move-result-object p1

    return-object p1
.end method
