.class public Lcom/miui/securityscan/fileobserver/ImageViewerActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroidx/viewpager/widget/ViewPager;

.field private final f:Landroidx/viewpager/widget/ViewPager$i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity$a;-><init>(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->f:Landroidx/viewpager/widget/ViewPager$i;

    return-void
.end method

.method public static synthetic d0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->k0(I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->m0(Ljava/io/File;)V

    return-void
.end method

.method private h0()V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lvf/r;->b(ZLandroid/view/View;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->b:Landroid/view/View;

    const v1, 0x7f06012a

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lvf/r;->b(ZLandroid/view/View;Z)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->b:Landroid/view/View;

    const v1, 0x7f060ca0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private i0()V
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    const v1, 0x7f0e023e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0bc9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0b21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->d:Landroid/widget/TextView;

    new-instance v0, Lvf/q;

    invoke-direct {v0, p0}, Lvf/q;-><init>(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic k0(I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->h0()V

    return-void
.end method

.method public static l0(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "image_path"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private m0(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const/16 v0, 0x380

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lwl/c;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2c

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Lwl/c;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v1, 0xc200080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->i0()V

    const v0, 0x7f0b0d8d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->e:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0b09c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v1

    invoke-virtual {v1}, Lvf/l;->t()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lcom/miui/securityscan/fileobserver/b;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/fileobserver/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lvf/p;

    invoke-direct {v1, p0}, Lvf/p;-><init>(Lcom/miui/securityscan/fileobserver/ImageViewerActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/fileobserver/b;->d(Lcom/miui/securityscan/fileobserver/b$b;)V

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->e:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->f:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->m0(Ljava/io/File;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object v0

    invoke-virtual {v0}, Lvf/l;->j()V

    iget-object v0, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->e:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/miui/securityscan/fileobserver/ImageViewerActivity;->f:Landroidx/viewpager/widget/ViewPager$i;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method
