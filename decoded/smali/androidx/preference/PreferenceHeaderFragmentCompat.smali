.class public abstract Landroidx/preference/PreferenceHeaderFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceHeaderFragmentCompat$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\r\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0007H\u0017J\u0010\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0017J$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0017J\u0008\u0010\u001c\u001a\u00020\u000eH&J\u001a\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0017J\u0012\u0010\u001f\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016J\n\u0010 \u001a\u0004\u0018\u00010\u0001H\u0016R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0011\u0010\'\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Landroidx/preference/PreferenceHeaderFragmentCompat;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/preference/PreferenceFragmentCompat$f;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "c0",
        "Landroidx/preference/Preference;",
        "header",
        "Loj/t;",
        "i0",
        "Landroid/content/Intent;",
        "intent",
        "h0",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "caller",
        "pref",
        "",
        "X",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "f0",
        "view",
        "onViewCreated",
        "onViewStateRestored",
        "e0",
        "Landroidx/activity/b;",
        "a",
        "Landroidx/activity/b;",
        "onBackPressedCallback",
        "d0",
        "()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "slidingPaneLayout",
        "<init>",
        "()V",
        "preference_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private a:Landroidx/activity/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 0

    invoke-static {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->g0(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    return-void
.end method

.method public static final synthetic b0(Landroidx/preference/PreferenceHeaderFragmentCompat;)Landroidx/activity/b;
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/activity/b;

    return-object p0
.end method

.method private final c0(Landroid/view/LayoutInflater;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .locals 6

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;)V

    sget v1, Landroidx/preference/l;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    sget v2, Landroidx/preference/l;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/preference/j;->b:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Landroidx/preference/m;->b:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    sget p1, Landroidx/preference/l;->b:I

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/preference/j;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p1, v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;-><init>(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/preference/m;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$e;->a:F

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static final g0(Landroidx/preference/PreferenceHeaderFragmentCompat;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/activity/b;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->o0()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/activity/b;->setEnabled(Z)V

    return-void
.end method

.method private final h0(Landroid/content/Intent;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final i0(Landroidx/preference/Preference;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->h0(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->s0()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/h;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->o0()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentManager;->n0(I)Landroidx/fragment/app/FragmentManager$i;

    move-result-object p1

    const-string v2, "childFragmentManager.getBackStackEntryAt(0)"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-interface {p1}, Landroidx/fragment/app/FragmentManager$i;->getId()I

    move-result p1

    invoke-virtual {v2, p1, v1}, Landroidx/fragment/app/FragmentManager;->Y0(II)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v2, "childFragmentManager"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v2, "beginTransaction()"

    invoke-static {p1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/s;->C(Z)Landroidx/fragment/app/s;

    sget v1, Landroidx/preference/l;->b:I

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1003

    invoke-virtual {p1, v0}, Landroidx/fragment/app/s;->D(I)Landroidx/fragment/app/s;

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q()Z

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method


# virtual methods
.method public X(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 4
    .param p1    # Landroidx/preference/PreferenceFragmentCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/preference/Preference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "caller"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v0

    sget v1, Landroidx/preference/l;->c:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Landroidx/preference/PreferenceHeaderFragmentCompat;->i0(Landroidx/preference/Preference;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p1

    sget v0, Landroidx/preference/l;->b:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->s0()Landroidx/fragment/app/h;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/h;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string v1, "childFragmentManager.fra\u2026.fragment!!\n            )"

    invoke-static {p1, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v1, "childFragmentManager"

    invoke-static {p2, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p2

    const-string v1, "beginTransaction()"

    invoke-static {p2, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/s;->C(Z)Landroidx/fragment/app/s;

    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    const/16 p1, 0x1003

    invoke-virtual {p2, p1}, Landroidx/fragment/app/s;->D(I)Landroidx/fragment/app/s;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/fragment/app/s;->i(Ljava/lang/String;)Landroidx/fragment/app/s;

    invoke-virtual {p2}, Landroidx/fragment/app/s;->k()I

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    return-object v0
.end method

.method public e0()Landroidx/fragment/app/Fragment;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Landroidx/preference/l;->c:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    const-string v5, "headerFragment.preferenc\u2026reen.getPreference(index)"

    invoke-static {v1, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->s0()Landroidx/fragment/app/h;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/h;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.PreferenceFragmentCompat"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f0()Landroidx/preference/PreferenceFragmentCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "parentFragmentManager"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/fragment/app/s;->B(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceHeaderFragmentCompat;->c0(Landroid/view/LayoutInflater;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    sget p3, Landroidx/preference/l;->c:I

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->f0()Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const-string v1, "beginTransaction()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->C(Z)Landroidx/fragment/app/s;

    invoke-virtual {v0, p3, p2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :cond_0
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setLockMode(I)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroidx/preference/PreferenceHeaderFragmentCompat$a;

    invoke-direct {p1, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$a;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    iput-object p1, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->T(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->b0(Landroidx/preference/PreferenceHeaderFragmentCompat;)Landroidx/activity/b;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->d0()Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/activity/b;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    new-instance p2, Landroidx/preference/PreferenceHeaderFragmentCompat$b;

    invoke-direct {p2, p0}, Landroidx/preference/PreferenceHeaderFragmentCompat$b;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance p2, Landroidx/preference/d;

    invoke-direct {p2, p0}, Landroidx/preference/d;-><init>(Landroidx/preference/PreferenceHeaderFragmentCompat;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->h(Landroidx/fragment/app/FragmentManager$k;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/activity/c;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Landroidx/activity/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p2

    iget-object v0, p0, Landroidx/preference/PreferenceHeaderFragmentCompat;->a:Landroidx/activity/b;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/lifecycle/v;Landroidx/activity/b;)V

    :goto_3
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceHeaderFragmentCompat;->e0()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    const-string v1, "beginTransaction()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->C(Z)Landroidx/fragment/app/s;

    sget v1, Landroidx/preference/l;->b:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->k()I

    :cond_1
    :goto_0
    return-void
.end method
