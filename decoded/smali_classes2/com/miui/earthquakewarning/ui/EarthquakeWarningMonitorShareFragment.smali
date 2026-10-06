.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;,
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable;
    }
.end annotation


# instance fields
.field private mBgContainer:Lcom/miui/earthquakewarning/view/RoundRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMonitorOrder:Ljava/lang/String;

.field private mSettings:Landroid/view/View;

.field private mShare:Landroid/view/View;

.field private mShareContainer:Landroid/widget/LinearLayout;

.field private mTvNumber:Landroid/widget/TextView;

.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->showPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->showExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->showShareFragment()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mSettings:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mShare:Landroid/view/View;

    return-object p0
.end method

.method private checkPrivacyUpdate()V
    .locals 1

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static savePhotoToSDCard(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_2

    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;->onSucceed()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, p2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object p1, p2

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, p2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;->onFailure()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_5

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    throw p0
.end method

.method private showExitDialog()V
    .locals 4

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeMonitorOrder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f1207b8

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1207b9

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$6;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$5;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lmiuix/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiuix/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f0f0008

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/PopupMenu;->inflate(I)V

    new-instance p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$4;

    invoke-direct {p1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$4;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method private showShareFragment()V
    .locals 5

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorOpenFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v3, 0x7f0b0835

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "eew_monitor_open_fragment"

    invoke-virtual {v2, v3, v0, v4}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {v2}, Landroidx/fragment/app/s;->l()I

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v2, 0x7f0b0a57

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->u(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->l()I

    :cond_0
    return-void
.end method

.method private snapshot(F)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mShareContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130180

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const p2, 0x7f0e014a

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeMonitorOrder()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mMonitorOrder:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "eew_share"

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/Android/data/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->savePath:Ljava/lang/String;

    const p2, 0x7f0b0caa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mTvNumber:Landroid/widget/TextView;

    const p2, 0x7f0b0a56

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mShareContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b02a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeMonitorOrder()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mTvNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207c0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0b0172

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/earthquakewarning/view/RoundRelativeLayout;

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mBgContainer:Lcom/miui/earthquakewarning/view/RoundRelativeLayout;

    sget-object p3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/warningcenter/disasterwarning/Utils;->isFolded(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mBgContainer:Lcom/miui/earthquakewarning/view/RoundRelativeLayout;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071df9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const p3, 0x7f0b0cf3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 v0, 0x42b80000    # 92.0f

    invoke-virtual {p3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071e78

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mTvNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071c52

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    const p2, 0x7f0b07ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0b07af

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mSettings:Landroid/view/View;

    const p3, 0x7f0b07b2

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mShare:Landroid/view/View;

    new-instance v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$2;

    invoke-direct {p3, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mSettings:Landroid/view/View;

    new-instance p3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$3;

    invoke-direct {p3, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$3;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->checkPrivacyUpdate()V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mSettings:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mShare:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, La8/k2;->u()I

    move-result p2

    const/16 p3, 0x438

    const/high16 v0, 0x3f800000    # 1.0f

    if-lt p2, p3, :cond_2

    goto :goto_1

    :cond_2
    int-to-float p2, p2

    mul-float/2addr p2, v0

    const/high16 p3, 0x44870000    # 1080.0f

    div-float v0, p2, p3

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f071f62

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const p3, 0x7f0b0b81

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    int-to-float p2, p2

    invoke-virtual {p3, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p3, 0x7f0b0b82

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p3, 0x7f0b0b84

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const p3, 0x7f0b0b85

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p2, "share"

    invoke-static {p2}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMonitorShowActionModuleClick(Ljava/lang/String;)V

    return-object p1
.end method

.method public save(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->snapshot(F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->savePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "earthquake_monitor_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mMonitorOrder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->savePhotoToSDCard(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;)V

    return-void
.end method

.method public share()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "earthquake_monitor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->mMonitorOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/earthquakewarning/utils/ShareController;->share(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$7;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment;->save(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$OnSaveListener;)V

    :goto_0
    return-void
.end method
