.class public final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreferenceFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMonitoredAppSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,117:1\n56#2,10:118\n*S KotlinDebug\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment\n*L\n36#1:118,10\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->d:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$g;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$g;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V

    new-instance v1, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$e;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v2, Lp2/b;

    invoke-static {v2}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v2

    new-instance v3, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$f;

    invoke-direct {v3, v1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$f;-><init>(Lak/a;)V

    invoke-static {p0, v2, v3, v0}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/Fragment;Lhk/b;Lak/a;Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->a:Loj/f;

    new-instance v0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$b;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->b:Loj/f;

    new-instance v0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$c;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->c:Loj/f;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->g0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->f0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic c0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->h0()Landroidx/preference/PreferenceCategory;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Lcom/miui/antivirus/ui/HeaderPreference;
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->i0()Lcom/miui/antivirus/ui/HeaderPreference;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Lp2/b;
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->j0()Lp2/b;

    move-result-object p0

    return-object p0
.end method

.method private final f0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/antivirus/model/e;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/e;

    new-instance v1, Lcom/miui/antivirus/ui/CustomIconPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/miui/antivirus/ui/CustomIconPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->d()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v0, Lp2/a;

    invoke-direct {v0, p0}, Lp2/a;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->h0()Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final g0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preference"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->k0(IZ)V

    const/4 p0, 0x1

    return p0
.end method

.method private final h0()Landroidx/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    return-object v0
.end method

.method private final i0()Lcom/miui/antivirus/ui/HeaderPreference;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/HeaderPreference;

    return-object v0
.end method

.method private final j0()Lp2/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/b;

    return-object v0
.end method

.method private final k0(IZ)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->j0()Lp2/b;

    move-result-object v0

    invoke-virtual {v0}, Lp2/b;->c()Lkotlinx/coroutines/flow/a0;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/a0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/e;

    new-instance v2, Lcom/miui/antivirus/model/e;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/antivirus/model/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, p2}, Lcom/miui/antivirus/model/e;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->j0()Lp2/b;

    move-result-object p2

    invoke-virtual {p2, v2}, Lp2/b;->f(Lcom/miui/antivirus/model/e;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->j0()Lp2/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lp2/b;->e(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f150061

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v3, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;Ltj/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
