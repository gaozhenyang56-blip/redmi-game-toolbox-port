.class public Lcom/miui/combinepermission/grantpermission/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Z

.field private j:Landroid/content/pm/PackageInfo;

.field private k:Z

.field l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lmiuix/appcompat/app/AppCompatActivity;

.field private p:Lmiuix/bottomsheet/i;

.field private q:Lcom/miui/combinepermission/FullLinearLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->d:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->j:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/combinepermission/grantpermission/a;->k:Z

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->q:Lcom/miui/combinepermission/FullLinearLayout;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->r:Landroid/widget/RelativeLayout;

    iput v1, p0, Lcom/miui/combinepermission/grantpermission/a;->s:I

    iput-boolean v1, p0, Lcom/miui/combinepermission/grantpermission/a;->t:Z

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    iput p3, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    iput-object p4, p0, Lcom/miui/combinepermission/grantpermission/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/combinepermission/grantpermission/a;->f:[Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/combinepermission/grantpermission/a;->l:Ljava/util/LinkedHashMap;

    iput-object p7, p0, Lcom/miui/combinepermission/grantpermission/a;->m:Ljava/util/LinkedHashMap;

    iput-object p8, p0, Lcom/miui/combinepermission/grantpermission/a;->n:Ljava/util/LinkedHashMap;

    iput-boolean p9, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    sget-object p4, Lg4/b;->a:Lg4/b;

    invoke-virtual {p4, p1, p2, p3}, Lg4/b;->c(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->j:Landroid/content/pm/PackageInfo;

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p4, p1}, Lg4/b;->h(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/combinepermission/grantpermission/a;->k:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BottomSheetModalController mPackageName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mUserId "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mFromCTA "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mDefaultDeny "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/miui/combinepermission/grantpermission/a;->k:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BottomSheetModalController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/miui/combinepermission/grantpermission/a;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/combinepermission/grantpermission/a;->j(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/combinepermission/grantpermission/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/combinepermission/grantpermission/a;->s:I

    return p1
.end method

.method static synthetic d(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/combinepermission/grantpermission/a;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/combinepermission/grantpermission/a;)Lcom/miui/combinepermission/FullLinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/combinepermission/grantpermission/a;->q:Lcom/miui/combinepermission/FullLinearLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/combinepermission/grantpermission/a;Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/combinepermission/grantpermission/a;->k(Lmiuix/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method static synthetic g(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/combinepermission/grantpermission/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    return-object p0
.end method

.method private static j(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private k(Lmiuix/bottomsheet/BottomSheetBehavior;)V
    .locals 3

    const-string v0, "BottomSheetModalController"

    :try_start_0
    const-string v1, "fullHeightMode"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1, v2}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullHeightMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/miui/combinepermission/grantpermission/a;->t:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->q:Lcom/miui/combinepermission/FullLinearLayout;

    new-instance v1, Lcom/miui/combinepermission/grantpermission/a$d;

    invoke-direct {v1, p0}, Lcom/miui/combinepermission/grantpermission/a$d;-><init>(Lcom/miui/combinepermission/grantpermission/a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/combinepermission/grantpermission/a;->t:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "fullHeightModeChangeLayoutUpdate"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private m()V
    .locals 10

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PermissionPreferenceFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    if-nez v0, :cond_0

    iget v2, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/a;->f:[Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/combinepermission/grantpermission/a;->l:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lcom/miui/combinepermission/grantpermission/a;->m:Ljava/util/LinkedHashMap;

    iget-object v7, p0, Lcom/miui/combinepermission/grantpermission/a;->n:Ljava/util/LinkedHashMap;

    iget-boolean v8, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    iget-boolean v9, p0, Lcom/miui/combinepermission/grantpermission/a;->k:Z

    invoke-static/range {v2 .. v9}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->g0(ILjava/lang/String;[Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZ)Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    :cond_0
    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    new-instance v2, Lcom/miui/combinepermission/grantpermission/a$e;

    invoke-direct {v2, p0}, Lcom/miui/combinepermission/grantpermission/a$e;-><init>(Lcom/miui/combinepermission/grantpermission/a;)V

    invoke-virtual {v0, v2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->h0(Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment$c;)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const v2, 0x7f0b0a4e

    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/s;->w(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method private n(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0b09c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/combinepermission/FullLinearLayout;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->q:Lcom/miui/combinepermission/FullLinearLayout;

    const v0, 0x7f0b02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->r:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    const v0, 0x7f0b019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    const v0, 0x7f0b0bf7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/combinepermission/grantpermission/a;->r(I)V

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/combinepermission/grantpermission/a;->s(Landroid/content/res/Configuration;)V

    const v1, 0x7f0b05f3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b00e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :try_start_0
    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120551

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v5, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    invoke-static {v4, v5}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b08b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1205ec

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0b08a9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0b08ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v1, 0x7f0b00a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/combinepermission/grantpermission/a;->k:Z

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private q(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResultIfNeeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->d0()Ljava/util/HashMap;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/combinepermission/grantpermission/a;->f:[Ljava/lang/String;

    array-length v2, v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/miui/combinepermission/grantpermission/a;->f:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Lg4/b;->a:Lg4/b;

    iget-object v7, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v6, v7, v5}, Lg4/b;->e(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    iget-boolean v8, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    if-nez v8, :cond_2

    iget-object v7, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v8, p0, Lcom/miui/combinepermission/grantpermission/a;->g:Ljava/lang/String;

    iget v9, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    invoke-virtual {v6, v7, v5, v8, v9}, Lg4/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    :cond_2
    aput v7, v3, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setResultIfNeeded permission "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BottomSheetModalController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->f:[Ljava/lang/String;

    const-string v2, "miui.intent.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "miui.intent.extra.REQUEST_PERMISSIONS_RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public i()Lmiuix/bottomsheet/i;
    .locals 3

    new-instance v0, Lmiuix/bottomsheet/i;

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/bottomsheet/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    new-instance v1, Lcom/miui/combinepermission/grantpermission/a$a;

    invoke-direct {v1, p0}, Lcom/miui/combinepermission/grantpermission/a$a;-><init>(Lcom/miui/combinepermission/grantpermission/a;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/i;->K(Lmiuix/bottomsheet/i$l;)V

    invoke-direct {p0}, Lcom/miui/combinepermission/grantpermission/a;->m()V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/combinepermission/grantpermission/a;->n(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    invoke-virtual {v1, v0}, Lmiuix/bottomsheet/i;->J(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    invoke-virtual {v1}, Lmiuix/bottomsheet/i;->B()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setState(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setModeConfig(I)V

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setForceFullHeight(Z)V

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    new-instance v2, Lcom/miui/combinepermission/grantpermission/a$b;

    invoke-direct {v2, p0}, Lcom/miui/combinepermission/grantpermission/a$b;-><init>(Lcom/miui/combinepermission/grantpermission/a;)V

    invoke-virtual {v1, v2}, Lmiuix/bottomsheet/BottomSheetBehavior;->setOnModeChangeListener(Lmiuix/bottomsheet/BottomSheetBehavior$l;)V

    new-instance v2, Lcom/miui/combinepermission/grantpermission/a$c;

    invoke-direct {v2, p0, v1}, Lcom/miui/combinepermission/grantpermission/a$c;-><init>(Lcom/miui/combinepermission/grantpermission/a;Lmiuix/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->p:Lmiuix/bottomsheet/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/bottomsheet/i;->w()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lcom/miui/combinepermission/grantpermission/a;->j(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public o(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/combinepermission/grantpermission/a;->s(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    iget-boolean p1, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/combinepermission/grantpermission/a;->l()V

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/combinepermission/grantpermission/a;->p(I)V

    goto/16 :goto_3

    :sswitch_1
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120e57

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    const v0, 0x7f120f49

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    invoke-virtual {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->i0()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->d0()Ljava/util/HashMap;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/combinepermission/grantpermission/a;->i:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirm !mFromCTA "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BottomSheetModalController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->l:Ljava/util/LinkedHashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v11, v12}, Lxc/m;->d(J)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lg4/b;->a:Lg4/b;

    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/a;->j:Landroid/content/pm/PackageInfo;

    iget v7, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    const/4 v9, 0x0

    move-wide v5, v11

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lg4/b;->l(Landroid/content/Context;Landroid/content/pm/PackageInfo;JIIZ)V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    sget-object v2, Lg4/b;->a:Lg4/b;

    iget-object v3, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/miui/combinepermission/grantpermission/a;->j:Landroid/content/pm/PackageInfo;

    iget v8, p0, Lcom/miui/combinepermission/grantpermission/a;->h:I

    const/4 v10, 0x0

    move-wide v6, v11

    move v9, v1

    invoke-virtual/range {v2 .. v10}, Lg4/b;->m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;JIIZ)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    goto/16 :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->j0()V

    :cond_6
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00a8 -> :sswitch_2
        0x7f0b019d -> :sswitch_1
        0x7f0b019e -> :sswitch_1
        0x7f0b05f3 -> :sswitch_0
    .end sparse-switch
.end method

.method public p(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/combinepermission/grantpermission/a;->q(I)V

    invoke-virtual {p0}, Lcom/miui/combinepermission/grantpermission/a;->l()V

    return-void
.end method

.method public r(I)V
    .locals 2

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070925

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public s(Landroid/content/res/Configuration;)V
    .locals 6

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/miui/combinepermission/grantpermission/a;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/miui/combinepermission/grantpermission/a;->s:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0703a2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0709ad

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070b9c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->o:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->a:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->b:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->c:Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/miui/combinepermission/grantpermission/PermissionPreferenceFragment;->k0(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/combinepermission/grantpermission/a;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
