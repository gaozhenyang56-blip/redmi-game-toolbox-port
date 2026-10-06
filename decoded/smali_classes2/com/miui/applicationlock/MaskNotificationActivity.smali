.class public Lcom/miui/applicationlock/MaskNotificationActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/MaskNotificationActivity$b;
    }
.end annotation


# static fields
.field public static final j:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Lmiui/security/SecurityManager;

.field private c:Ljava/lang/String;

.field private d:Lz2/d;

.field private e:Z

.field private f:Lc3/d;

.field private g:Lcom/miui/applicationlock/MaskNotificationActivity$b;

.field private h:Lmiuix/recyclerview/widget/RecyclerView;

.field private i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->j:Landroid/util/ArraySet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.viber.voip"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.bbm"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.bsb.hike"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.wumii.android.mimi"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.instagram.android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.facebook.lite"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->a:Z

    new-instance v0, Lz2/g0;

    invoke-direct {v0}, Lz2/g0;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->i:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic d0(Lc3/b;Lc3/b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/MaskNotificationActivity;->i0(Lc3/b;Lc3/b;)I

    move-result p0

    return p0
.end method

.method static synthetic e0(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->b:Lmiui/security/SecurityManager;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->i:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/applicationlock/MaskNotificationActivity;)Lz2/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->d:Lz2/d;

    return-object p0
.end method

.method private static synthetic i0(Lc3/b;Lc3/b;)I
    .locals 1

    invoke-virtual {p0}, Lc3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc3/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lc3/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lc3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lc3/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lc3/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private j0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->b:Lmiui/security/SecurityManager;

    invoke-static {v0}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->b:Lmiui/security/SecurityManager;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    invoke-virtual {v2, v3, p1, v1}, Lmiui/security/SecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xdd

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setEndActionMenuEnabled(Z)V

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const v1, 0x7f0e0098

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->f:Lc3/d;

    if-eqz p1, :cond_0

    const-string v2, "stateNeedPass"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->a:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enter_way"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La3/a;->y(Ljava/lang/String;)V

    const-string v3, "mask_notification_notify"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-static {v3}, Lc3/f;->n0(I)V

    :cond_1
    const-string v3, "mask_notification_app_choose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mask_notification_push"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_3
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "state"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    const-string p1, "applock_setting_mask_notification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    :goto_1
    iget-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->f:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->l()Z

    move-result p1

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    :cond_6
    const p1, 0x7f0b06d6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lc3/f;->s0(ZLandroid/view/Window;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->c:Ljava/lang/String;

    const-string p1, "security"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->b:Lmiui/security/SecurityManager;

    new-instance p1, Lcom/miui/applicationlock/MaskNotificationActivity$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity$b;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;Lcom/miui/applicationlock/MaskNotificationActivity$a;)V

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->g:Lcom/miui/applicationlock/MaskNotificationActivity$b;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0x71

    iget-object v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->g:Lcom/miui/applicationlock/MaskNotificationActivity$b;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    new-instance p1, Lz2/d;

    invoke-direct {p1}, Lz2/d;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->d:Lz2/d;

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->h:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lz2/a;

    invoke-direct {v0, p0}, Lz2/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    new-instance v0, Lcom/miui/applicationlock/MaskNotificationActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/MaskNotificationActivity$a;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0751

    const/4 v2, 0x0

    const/16 v3, 0x71

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0d3e

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->j0(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->g:Lcom/miui/applicationlock/MaskNotificationActivity$b;

    invoke-virtual {v0, v3, v2, v1}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_1
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->a:Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->f:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    if-nez v0, :cond_1

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->a:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xdd

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "stateNeedPass"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->e:Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lc3/f;->s0(ZLandroid/view/Window;)V

    :cond_0
    return-void
.end method
