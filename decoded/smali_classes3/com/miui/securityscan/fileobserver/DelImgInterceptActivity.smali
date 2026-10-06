.class public Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;
    }
.end annotation


# static fields
.field private static final v:Ljava/lang/String; = "DelImgInterceptActivity"


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvf/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/miui/securityscan/fileobserver/a;

.field private f:Lmiuix/appcompat/app/ProgressDialog;

.field private g:Lmiuix/appcompat/app/ProgressDialog;

.field private h:Landroidx/constraintlayout/widget/Group;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroidx/recyclerview/widget/RecyclerView;

.field private s:Landroidx/recyclerview/widget/GridLayoutManager;

.field private t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final u:Lcom/miui/securityscan/fileobserver/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    iput-boolean v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    new-instance v0, Lvf/i;

    invoke-direct {v0, p0}, Lvf/i;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->u:Lcom/miui/securityscan/fileobserver/a$b;

    return-void
.end method

.method private static synthetic A0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private B0()V
    .locals 3

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v0

    new-instance v1, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$a;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    iget v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    invoke-virtual {v0, v1, v2}, Lvf/l;->H(Lvf/b;I)V

    return-void
.end method

.method private static C0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/File;

    const/4 v1, 0x0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance p0, Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->connect()V

    invoke-virtual {p0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private D0(Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->L0(Z)V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f120c41

    goto :goto_0

    :cond_0
    const v2, 0x7f120c48

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->p0()V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->v0(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->e:Lcom/miui/securityscan/fileobserver/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->s0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;
    .locals 0

    return-object p0
.end method

.method private F0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvf/k;

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    iget-object v1, v1, Lvf/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->e:Lcom/miui/securityscan/fileobserver/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100062

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private G0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appPackageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    return-void
.end method

.method private H0(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f100061

    goto :goto_0

    :cond_0
    const v1, 0x7f100060

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0119

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b038e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b01fd

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v5

    invoke-direct {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const p1, 0x7f120644

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v5

    invoke-direct {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120c49

    invoke-virtual {p1, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lvf/d;

    invoke-direct {v0, p0, p1}, Lvf/d;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lvf/e;

    invoke-direct {v0, p0, p1}, Lvf/e;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lvf/f;

    invoke-direct {v1, p1}, Lvf/f;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600f8

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private I0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->f:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f120c4c

    goto :goto_0

    :cond_0
    const p1, 0x7f120c4d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->f:Lmiuix/appcompat/app/ProgressDialog;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method private J0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->g:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120cd7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->g:Lmiuix/appcompat/app/ProgressDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private K0(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    const-string v2, "del_image_pkg_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private L0(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->h:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->j:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060c82

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->h:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->i:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->j:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06018c

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public static synthetic d0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->A0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->y0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->w0()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->x0(Landroid/view/View;I)V

    return-void
.end method

.method private initData()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "files"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    const-string v3, "notificationId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "appPackageName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    :try_start_0
    invoke-static {v1, v2, v3}, Lkc/i;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->v:Ljava/lang/String;

    const-string v5, "get name exception!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t0()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->G0()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->G0()V

    :goto_1
    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->p0()V

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    invoke-virtual {v0, v1}, Lvf/l;->o(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2
    const-string v1, "open_del_img_intercept_activity"

    invoke-direct {p0, v1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->K0(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->F0(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->J0()V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->B0()V

    :goto_2
    return-void
.end method

.method public static synthetic j0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->z0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->u0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->F0(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    const-string p1, "click_del_img"

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->K0(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->H0(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 4

    const-string p1, "click_recover_img"

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->K0(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->I0(Z)V

    new-instance v0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v1

    iget v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    iget-object v3, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;ZILjava/util/List;)V

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic m0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->C0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o0(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->D0(Z)V

    return-void
.end method

.method private p0()V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private q0(Landroidx/constraintlayout/widget/e;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0, p3}, Landroidx/constraintlayout/widget/e;->R(III)V

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0, p3}, Landroidx/constraintlayout/widget/e;->R(III)V

    return-void
.end method

.method private r0()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-static {}, Lx4/a0;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-class v0, Landroid/view/SurfaceControl;

    const-string v1, "getPhysicalDisplayIds"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private s0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->f:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->o:Landroid/widget/ImageView;

    new-instance v1, Lvf/j;

    invoke-direct {v1, p0}, Lvf/j;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private u0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->g:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private v0(Z)V
    .locals 4

    iget v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->n:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "calleePkg"

    const-string v2, "delete_picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->l:I

    const-string v1, "callerUid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lx4/z1;->e()I

    move-result p1

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/miui/permission/PermissionContract;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->v:Ljava/lang/String;

    const-string v1, "call PermissionContract.CONTENT_URI fail"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic w0()V
    .locals 3

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e;-><init>()V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/e;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v1, 0x7f0b00f0

    const v2, 0x7f0718cc

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q0(Landroidx/constraintlayout/widget/e;II)V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->o:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic x0(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x258

    if-le p1, v0, :cond_0

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lvf/l;->J(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->d:Ljava/util/ArrayList;

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->l0(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method

.method private synthetic y0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    const-string p2, "click_confirm_del_img"

    invoke-direct {p0, p2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->K0(Ljava/lang/String;)V

    new-instance p2, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->m:I

    iget-object v2, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {p2, v0, v3, v1, v2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity$b;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;ZILjava/util/List;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    invoke-direct {p0, v3}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->I0(Z)V

    return-void
.end method

.method private synthetic z0(Lmiuix/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "click_confirm_cancel_del_img"

    invoke-direct {p0, p2}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->K0(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->H0(Z)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->a:Z

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    iput p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->b:I

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->s:Landroidx/recyclerview/widget/GridLayoutManager;

    iget v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->b:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->s(I)V

    new-instance p1, Landroidx/constraintlayout/widget/e;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/e;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/e;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const v0, 0x7f0b0581

    const v1, 0x7f07032d

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q0(Landroidx/constraintlayout/widget/e;II)V

    const v0, 0x7f0b00e5

    const v1, 0x7f07032c

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q0(Landroidx/constraintlayout/widget/e;II)V

    const v0, 0x7f0b055f

    const v1, 0x7f07032f

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q0(Landroidx/constraintlayout/widget/e;II)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0e002c

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    const p1, 0x7f0b09c2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p1, 0x7f0b00e5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->o:Landroid/widget/ImageView;

    const p1, 0x7f0b00f0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->p:Landroid/widget/TextView;

    const p1, 0x7f0b00dd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->q:Landroid/widget/TextView;

    const p1, 0x7f0b02d5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Group;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->h:Landroidx/constraintlayout/widget/Group;

    const p1, 0x7f0b024d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->i:Landroid/view/View;

    const p1, 0x7f0b055f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->r0()V

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->E0()Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;

    move-result-object v0

    iget v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->b:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->s:Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p1, 0x7f0b02f6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->j:Landroid/widget/Button;

    new-instance v0, Lvf/g;

    invoke-direct {v0, p0}, Lvf/g;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0964

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->k:Landroid/widget/Button;

    new-instance v0, Lvf/h;

    invoke-direct {v0, p0}, Lvf/h;-><init>(Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/miui/securityscan/fileobserver/a;

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->u:Lcom/miui/securityscan/fileobserver/a$b;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->c:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lcom/miui/securityscan/fileobserver/a;-><init>(Lcom/miui/securityscan/fileobserver/a$b;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->e:Lcom/miui/securityscan/fileobserver/a;

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->initData()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->initData()V

    iget-object p1, p0, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->h:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->L0(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/DelImgInterceptActivity;->H0(Z)V

    return p1
.end method
