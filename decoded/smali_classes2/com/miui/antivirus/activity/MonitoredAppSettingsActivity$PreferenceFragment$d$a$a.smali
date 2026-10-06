.class final Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMonitoredAppSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$onViewCreated$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n766#2:118\n857#2,2:119\n*S KotlinDebug\n*F\n+ 1 MonitoredAppSettingsActivity.kt\ncom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$onViewCreated$1$1$1\n*L\n67#1:118\n67#1:119,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->d(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V

    return-void
.end method

.method private static final d(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->d0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Lcom/miui/antivirus/ui/HeaderPreference;

    move-result-object p0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/HeaderPreference;->d(Z)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/antivirus/model/e;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/antivirus/model/e;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-static {p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;->c0(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10012f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->b(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->a:Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;

    new-instance v1, Lcom/miui/antivirus/activity/c;

    invoke-direct {v1, v0, p1}, Lcom/miui/antivirus/activity/c;-><init>(Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/activity/MonitoredAppSettingsActivity$PreferenceFragment$d$a$a;->b(Ljava/util/List;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
