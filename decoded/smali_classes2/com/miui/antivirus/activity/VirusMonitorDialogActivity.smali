.class public Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/miui/antivirus/model/i;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private d0(Lcom/miui/antivirus/model/i;)V
    .locals 1

    invoke-static {p0}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo2/b;->b(Lcom/miui/antivirus/model/i;)V

    return-void
.end method

.method private e0(Lcom/miui/antivirus/model/i;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_icon://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->b:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v1, v2}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->h0(Lo2/b$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/i;->g()Lo2/b$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->g0(Lo2/b$d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private f0()V
    .locals 7

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const-string v2, "android.app.ActivityManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "forceStopPackage"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "com.google.android.packageinstaller"

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g0(Lo2/b$d;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lo2/b$d;->b:Lo2/b$d;

    if-ne p1, v0, :cond_0

    const p1, 0x7f12010e

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lo2/b$d;->c:Lo2/b$d;

    if-ne p1, v0, :cond_1

    const p1, 0x7f12010f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private h0(Lo2/b$d;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lo2/b$d;->b:Lo2/b$d;

    if-ne p1, v0, :cond_0

    const p1, 0x7f120111

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lo2/b$d;->c:Lo2/b$d;

    if-ne p1, v0, :cond_1

    const p1, 0x7f120112

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private i0()V
    .locals 1

    const v0, 0x7f0b07b5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0b07b6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b07b4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b07ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0b07ac

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0b07ae

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->j0()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->d:Lcom/miui/antivirus/model/i;

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->d0(Lcom/miui/antivirus/model/i;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120110

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->d:Lcom/miui/antivirus/model/i;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/i;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->f0()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b07ac
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0e0506

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->i0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "virus_info_key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/model/i;

    iput-object p1, p0, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->d:Lcom/miui/antivirus/model/i;

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/VirusMonitorDialogActivity;->e0(Lcom/miui/antivirus/model/i;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
