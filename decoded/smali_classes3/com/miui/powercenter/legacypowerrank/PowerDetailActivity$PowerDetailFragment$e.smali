.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field final synthetic d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->b:I

    iput p4, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_2

    iget p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->c:I

    invoke-static {p1}, Lme/m;->b(I)I

    move-result p1

    invoke-static {p1}, Lx4/b2;->d(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->c:I

    invoke-static {p1, v0, v1}, Lx4/b2;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->b:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->d:Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->g0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->a([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment$e;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
