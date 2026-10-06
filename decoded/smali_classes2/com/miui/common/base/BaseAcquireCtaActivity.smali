.class public abstract Lcom/miui/common/base/BaseAcquireCtaActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# static fields
.field protected static final CTA_RESULT_CODE_AGREE:I = 0x1

.field protected static final CTA_RESULT_CODE_DISAGREE:I = 0x0

.field protected static final CTA_RESULT_CODE_LOCAL_CHANGE:I = -0x3

.field private static final TAG:Ljava/lang/String; = "BaseAcquireCtaActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/common/base/BaseAcquireCtaActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected acquireCTAPermissionsForResult()Z
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "miui.intent.action.SYSTEM_PERMISSION_DECLARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v2, Lgh/b;->b:Z

    if-eqz v2, :cond_0

    const v2, 0x7f1205f1

    goto :goto_0

    :cond_0
    const v2, 0x7f1205f0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_purpose"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f12020e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "agree_desc"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Leg/o;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "privacy_policy"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mandatory_permission"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.permission-group.LOCATION"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "runtime_perm"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1205e6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "runtime_perm_desc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v3

    :cond_1
    return v1
.end method

.method protected dealWithCTAActivityResult(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Leg/o;->c(Landroid/content/Context;Z)V

    new-instance p1, Lcom/miui/common/base/BaseAcquireCtaActivity$a;

    invoke-direct {p1, p0}, Lcom/miui/common/base/BaseAcquireCtaActivity$a;-><init>(Lcom/miui/common/base/BaseAcquireCtaActivity;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/common/base/BaseAcquireCtaActivity;->dealWithCTAActivityResult(I)V

    :cond_0
    return-void
.end method
