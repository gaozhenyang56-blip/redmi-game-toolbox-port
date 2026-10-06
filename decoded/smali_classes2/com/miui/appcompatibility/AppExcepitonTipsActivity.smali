.class public Lcom/miui/appcompatibility/AppExcepitonTipsActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const-string v0, "\u8be5\u5e94\u7528"

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->f:Ljava/lang/String;

    const-string v0, "com.miui.appcompatibility.LaunchDialog.appstore"

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic i0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->q0()Z

    move-result p0

    return p0
.end method

.method static synthetic j0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic m0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method private q0()Z
    .locals 5

    const-string v0, "store"

    invoke-static {}, La8/m;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "app_compatibility"

    invoke-static {v1, v3}, Lcom/miui/permcenter/compact/MiuiSettingsCompat;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "lauch"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "launch"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-object v3, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->h:Ljava/lang/String;

    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return v2

    :cond_6
    :goto_1
    const-string v0, "AppExcepitonTipsActivity"

    const-string v1, "dataList=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static r0()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 5

    new-instance v0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$a;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    new-instance v1, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$b;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j:Ljava/lang/String;

    const-string v3, "com.miui.appcompatibility.LaunchDialog.launcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\u5173\u95ed"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    const-string v2, "\u7ee7\u7eed\u8fd0\u884c"

    :goto_0
    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j:Ljava/lang/String;

    const-string v4, "com.miui.appcompatibility.LaunchDialog.appstore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    const-string v2, "\u4ecd\u7136\u5b89\u88c5"

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "\u5e94\u7528\u5f02\u5e38\u63d0\u793a"

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 3

    const v0, 0x7f130023

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    iget-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->f:Ljava/lang/String;

    const-string v1, "module_show"

    invoke-static {v1, v0}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->r0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    const v0, 0x7f12016f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->h:Ljava/lang/String;

    const v0, 0x7f120170

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->j:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_2
    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    new-instance p1, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;

    invoke-direct {p1, p0}, Lcom/miui/appcompatibility/AppExcepitonTipsActivity$c;-><init>(Lcom/miui/appcompatibility/AppExcepitonTipsActivity;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    iget-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->d:Landroid/view/View;

    const v0, 0x7f0b07e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/appcompatibility/AppExcepitonTipsActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const-string v0, "module_click"

    const-string v1, "back"

    invoke-static {v0, v1}, Ly2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
