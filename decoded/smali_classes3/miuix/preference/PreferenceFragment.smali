.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$c;,
        Lmiuix/preference/PreferenceFragment$d;
    }
.end annotation


# static fields
.field public static final CARD_STYLE:I = 0x1

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field public static final FORCE_CARD_STYLE:I = 0x2

.field public static final TRADITIONAL_STYLE:I


# instance fields
.field private mAdapterInvalid:Z

.field private mConfigChangeUpdateViewEnable:Z

.field protected mContentInset:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCurSelectedItem:I

.field private mDeviceType:I

.field private mExtraHorizontalPadding:I

.field private mExtraPaddingEnable:Z

.field private mExtraPaddingInitEnable:Z

.field private mExtraPaddingObserver:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyk/a;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPaddingPolicy:Lyk/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

.field private mGroupAdapter:Lmiuix/preference/i;

.field private mIsEnableCardStyle:Z

.field private mIsOverlayMode:Z

.field private mItemSelectable:Z

.field private mListContainer:Landroid/view/View;

.field private mListViewPaddingBottom:I

.field private mUserExtraPaddingPolicy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lmiuix/preference/flexible/DropdownPreferenceTemplate;

    const-string v1, "dropdownPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lmiuix/preference/flexible/TextPreferenceTemplate;

    const-string v1, "textPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lmiuix/preference/flexible/RadioButtonPreferenceTemplate;

    const-string v1, "radioButtonPreference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    const-class v0, Lmiuix/preference/flexible/MiuixPreferenceTemplate;

    const-string v1, "preference"

    invoke-static {v1, v0}, Lmiuix/flexible/template/TemplateFactory;->registerTemplate(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    const/4 v2, -0x1

    iput v2, p0, Lmiuix/preference/PreferenceFragment;->mCurSelectedItem:I

    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return-void
.end method

.method static synthetic access$100(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceFragment$c;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    return p0
.end method

.method static synthetic access$1100(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return p0
.end method

.method static synthetic access$1200(Lmiuix/preference/PreferenceFragment;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return p0
.end method

.method static synthetic access$200(Lmiuix/preference/PreferenceFragment;)Lyk/b;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lyk/b;II)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lmiuix/preference/PreferenceFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/i;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    return-object p0
.end method

.method private initExtraPaddingPolicy()V
    .locals 3

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    sget v1, Ltm/e;->d:I

    sget v2, Ltm/e;->e:I

    invoke-static {v0, v1, v2}, Lyk/b$a;->b(III)Lyk/b;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lyk/b;->j(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {v1}, Lyk/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {v1}, Lyk/b;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    :cond_1
    return-void
.end method

.method private isTabletOrFold()Z
    .locals 2

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setActionBarOverLayoutBg()V
    .locals 7

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/k;->l:I

    invoke-static {v2, v3}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/preference/k;->m:I

    invoke-static {v3, v4}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/c;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    const/high16 v6, 0x8000000

    and-int/2addr v0, v6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    if-eqz v3, :cond_6

    if-nez v4, :cond_6

    instance-of v0, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_6
    return-void
.end method

.method private updateActionBarOverlay()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->hasActionBar()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmiuix/appcompat/app/IFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    sget v1, Lmiuix/preference/k;->G:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    :cond_3
    return-void
.end method

.method private updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)Z
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lyk/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p1, v1}, Lbl/c;->j(Landroid/content/Context;Landroid/content/res/Configuration;)Lbl/o;

    move-result-object p1

    if-nez p3, :cond_0

    iget-object p3, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    :cond_0
    move v4, p3

    if-nez p4, :cond_1

    iget-object p3, p1, Lbl/o;->c:Landroid/graphics/Point;

    iget p4, p3, Landroid/graphics/Point;->y:I

    :cond_1
    move v5, p4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    iget-object p1, p1, Lbl/o;->d:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isInFloatingWindowMode()Z

    move-result v7

    move-object v1, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lyk/b;->i(IIIIFZ)V

    invoke-virtual {p2}, Lyk/b;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lyk/b;->f()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p3

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public acceptExtraPaddingFromParent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addExtraPaddingObserver(Lyk/a;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    invoke-interface {p1, v0}, Lyk/a;->setExtraHorizontalPadding(I)Z

    :cond_1
    return-void
.end method

.method public bindViewWithContentInset(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0, p1}, Lmiuix/appcompat/app/IContentInsetState;->bindViewWithContentInset(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->bindViewWithContentInset(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkThemeLegality()V
    .locals 0

    return-void
.end method

.method public dismissImmersionMenu(Z)V
    .locals 0

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v0, :cond_0

    instance-of v2, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentInset()Landroid/graphics/Rect;
    .locals 2

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->getContentInset()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mContentInset:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExtraHorizontalPadding()I
    .locals 1

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    return v0
.end method

.method public getExtraPaddingPolicy()Lyk/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public hasActionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideEndOverflowMenu()V
    .locals 0

    return-void
.end method

.method public hideOverflowMenu()V
    .locals 0

    return-void
.end method

.method protected isActionBarOverlay()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    return v0
.end method

.method public isConfigChangeUpdateViewEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    return v0
.end method

.method public isHighlightRequested()Z
    .locals 1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/i;->L()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInEditActionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isInFloatingWindowMode()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isInMiuiSettingMultiWindowMode()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lbl/f;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIsInSearchActionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRegisterResponsive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    invoke-static {p1}, Lsl/b;->a(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    if-eq v1, v0, :cond_6

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v1, :cond_1

    sget v1, Ltm/e;->d:I

    sget v2, Ltm/e;->e:I

    invoke-static {v0, v1, v2}, Lyk/b$a;->b(III)Lyk/b;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    :cond_1
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1}, Lyk/b;->j(Z)V

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v2, v2}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)Z

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {v0}, Lyk/b;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    invoke-virtual {v0}, Lyk/b;->f()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPadding(I)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getExtraHorizontalPadding()I

    move-result p1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lmiuix/preference/i;->setExtraHorizontalPadding(I)Z

    :cond_4
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyk/a;

    invoke-interface {v0, p1}, Lyk/a;->onExtraPaddingChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    :cond_6
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->isTabletOrFold()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/preference/PreferenceFragment$c;->y(Landroid/content/Context;)V

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-virtual {v0}, Lmiuix/preference/PreferenceFragment$c;->B()V

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/i;->J(Landroid/content/Context;)V

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    iget-object v2, p1, Ldm/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->k(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->l(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->m(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->n(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    iget v7, p1, Ldm/a;->c:I

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/i;->T(Landroid/graphics/Paint;IIIII)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onContentInsetChanged(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget v4, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    add-int/2addr p1, v4

    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->isConfigChangeUpdateViewEnable()Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mConfigChangeUpdateViewEnable:Z

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lmiuix/appcompat/R$styleable;->Window:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingEnable(Z)V

    sget v1, Lmiuix/appcompat/R$styleable;->Window_windowExtraPaddingHorizontalInitEnable:I

    iget-boolean v2, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiuix/preference/PreferenceFragment;->setExtraHorizontalPaddingInitEnable(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lmiuix/preference/k;->n:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lpl/d;->j(Landroid/content/Context;II)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    :cond_2
    return-void
.end method

.method protected final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 7

    new-instance v0, Lmiuix/preference/i;

    iget-boolean v1, p0, Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z

    invoke-direct {v0, p1, v1}, Lmiuix/preference/i;-><init>(Landroidx/preference/PreferenceGroup;Z)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    invoke-virtual {v0, p1}, Lmiuix/preference/i;->V(Z)V

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    invoke-virtual {p1, v0}, Lmiuix/preference/i;->setExtraHorizontalPadding(I)Z

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    invoke-virtual {p1}, Landroidx/preference/c;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    iget-object v1, p1, Ldm/a;->a:Landroid/graphics/Paint;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->k(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->l(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->m(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$c;->n(Lmiuix/preference/PreferenceFragment$c;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    iget v6, p1, Ldm/a;->c:I

    invoke-virtual/range {v0 .. v6}, Lmiuix/preference/i;->T(Landroid/graphics/Paint;IIIII)V

    :cond_1
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    sget p3, Lmiuix/preference/p;->g:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    move-object p3, p1

    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    iput p3, p0, Lmiuix/preference/PreferenceFragment;->mListViewPaddingBottom:I

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lmiuix/smooth/c;->e(Landroid/view/View;Z)V

    new-instance p3, Lmiuix/preference/PreferenceFragment$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, p0, v0, v1}, Lmiuix/preference/PreferenceFragment$c;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$a;)V

    iput-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$c;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance p3, Lmiuix/recyclerview/card/d;

    invoke-direct {p3}, Lmiuix/recyclerview/card/d;-><init>()V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iput-object p2, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    new-instance p3, Lmiuix/preference/PreferenceFragment$a;

    invoke-direct {p3, p0}, Lmiuix/preference/PreferenceFragment$a;-><init>(Lmiuix/preference/PreferenceFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    instance-of p3, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_1

    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->updateActionBarOverlay()V

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->setActionBarOverLayoutBg()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lsl/b;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment;->mDeviceType:I

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_2
    iget-object v3, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    invoke-direct {p0, v0, v3, v2, v1}, Lmiuix/preference/PreferenceFragment;->updateExtraPaddingHorizontal(Landroid/content/Context;Lyk/b;II)Z

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceFragment;->unregisterCoordinateScrollView(Landroid/view/View;)V

    return-void
.end method

.method public onDispatchNestedScrollOffset([I)V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$e;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$e;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$e;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$e;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->p0(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->m0(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->m0(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/preference/i;->X(Landroidx/preference/Preference;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onProcessBindViewWithContentInset(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->stopHighlight()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mIsOverlayMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->registerCoordinateScrollView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getContentInset()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceFragment;->onContentInsetChanged(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public registerCoordinateScrollView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->registerCoordinateScrollView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeExtraPaddingObserver(Lyk/a;)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingObserver:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestDispatchContentInset()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/IFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/IFragment;

    invoke-interface {v0}, Lmiuix/appcompat/app/IContentInsetState;->requestDispatchContentInset()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->requestDispatchContentInset()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestHighlight(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lmiuix/preference/PreferenceFragment$b;

    invoke-direct {v1, p0, p1}, Lmiuix/preference/PreferenceFragment$b;-><init>(Lmiuix/preference/PreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCorrectNestedScrollMotionEventEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .locals 1

    iget v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingEnable:Z

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lyk/b;->j(Z)V

    :cond_0
    return-void
.end method

.method public setExtraHorizontalPaddingInitEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingInitEnable:Z

    return-void
.end method

.method public setExtraPaddingPolicy(Lyk/b;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mExtraPaddingPolicy:Lyk/b;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mUserExtraPaddingPolicy:Z

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;->initExtraPaddingPolicy()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setItemSelectable(Z)V
    .locals 1

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment;->mItemSelectable:Z

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/preference/i;->V(Z)V

    :cond_0
    return-void
.end method

.method public setNestedScrollingParentEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    return-void
.end method

.method public showEndOverflowMenu()V
    .locals 0

    return-void
.end method

.method public showImmersionMenu()V
    .locals 0

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public showOverflowMenu()V
    .locals 0

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public stopHighlight()V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/i;->Z()V

    :cond_0
    return-void
.end method

.method public unregisterCoordinateScrollView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinateScrollView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
