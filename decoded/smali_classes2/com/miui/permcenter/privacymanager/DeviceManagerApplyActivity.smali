.class public Lcom/miui/permcenter/privacymanager/DeviceManagerApplyActivity;
.super Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/model/InterceptBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected f0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lpc/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "permName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;->q0(Landroid/content/Intent;)Lcom/miui/permcenter/privacymanager/InterceptPermissionFragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    return-void
.end method
