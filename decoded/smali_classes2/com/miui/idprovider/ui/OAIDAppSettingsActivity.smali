.class public final Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lt9/k;
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$a;,
        Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/AppCompatActivity;",
        "Lt9/k;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/permcenter/model/a;",
        ">;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOAIDAppSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OAIDAppSettingsActivity.kt\ncom/miui/idprovider/ui/OAIDAppSettingsActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n1747#2,3:270\n*S KotlinDebug\n*F\n+ 1 OAIDAppSettingsActivity.kt\ncom/miui/idprovider/ui/OAIDAppSettingsActivity\n*L\n111#1:270,3\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lt9/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Lmiuix/androidbasewidget/widget/ProgressBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lmiuix/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->f:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->j0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->k0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->l0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)Lt9/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    return-object p0
.end method

.method private final h0(Lcom/miui/permcenter/model/a;Z)V
    .locals 5

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/model/a;->e(Z)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->c()I

    move-result v2

    xor-int/lit8 v3, p2, 0x1

    const/16 v4, 0x2735

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {p0, v0, v1}, Lx4/f1;->E(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->c()I

    move-result v3

    invoke-static {v1, v3}, Lx4/z1;->j(II)I

    move-result v1

    xor-int/lit8 v3, p2, 0x1

    invoke-static {v0, v2, v1, v4, v3}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    :cond_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/permcenter/model/a;->c()I

    move-result p1

    const/16 v2, 0x2736

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, v1, p1, v2, p2}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    return-void
.end method

.method private final i0()V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1219ef

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120651

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120650

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt9/g;

    invoke-direct {v3, p0}, Lt9/g;-><init>(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120652

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt9/h;

    invoke-direct {v3, p0}, Lt9/h;-><init>(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)V

    invoke-virtual {v0, v2, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lt9/i;

    invoke-direct {v1, p0}, Lt9/i;-><init>(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final j0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lt9/e;->s(Z)V

    :cond_0
    return-void
.end method

.method private static final k0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lt9/e;->s(Z)V

    :cond_0
    sget-object p1, Lv9/d;->a:Lv9/d;

    invoke-virtual {p1, p0, p2}, Lv9/d;->f(Landroid/content/Context;Z)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lt9/e;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/model/a;

    invoke-virtual {v1}, Lcom/miui/permcenter/model/a;->d()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "info"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lt9/l;

    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1, p2}, Lt9/l;-><init>(Landroid/app/AppOpsManager;Ljava/util/List;Z)V

    new-instance p1, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;

    invoke-direct {p1, p0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;-><init>(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)V

    invoke-virtual {v0, p1}, Lt9/l;->c(Lak/a;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static final l0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lt9/e;->s(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 1
    .param p1    # Lq0/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;

    iget-boolean v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->c:Z

    invoke-virtual {p1, v0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->K(Z)V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->g0(Lq0/c;Ljava/util/List;)V

    return-void
.end method

.method public e(Landroid/widget/CompoundButton;ZLcom/miui/permcenter/model/a;)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/miui/permcenter/model/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->h0(Lcom/miui/permcenter/model/a;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lt9/e;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/model/a;

    invoke-virtual {v0}, Lcom/miui/permcenter/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    move p3, p1

    :cond_3
    :goto_0
    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->i0()V

    goto :goto_1

    :cond_4
    sget-object p1, Lv9/d;->a:Lv9/d;

    invoke-virtual {p1, p0, p2}, Lv9/d;->f(Landroid/content/Context;Z)Z

    :goto_1
    return-void
.end method

.method public g0(Lq0/c;Ljava/util/List;)V
    .locals 2
    .param p1    # Lq0/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/permcenter/model/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lt9/e;->u(Ljava/util/List;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    if-eqz p1, :cond_2

    sget-object p2, Lv9/d;->a:Lv9/d;

    invoke-virtual {p2, p0}, Lv9/d;->b(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lt9/e;->s(Z)V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0425

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b082b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setZ(F)V

    :goto_1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_2
    new-instance v0, Lt9/e;

    invoke-direct {v0, p0}, Lt9/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->a:Lt9/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lt9/e;->t(Lt9/k;)V

    :cond_4
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const-string v1, "getInstance(this)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_5
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/model/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;

    iget-object p2, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->b:Landroid/app/AppOpsManager;

    invoke-direct {p1, p0, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;)V

    iget-boolean p2, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->c:Z

    invoke-virtual {p1, p2}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$b;->K(Z)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0746

    const-string v2, "click_content"

    const-string v3, "1127.36.0.1.35766"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f0b0a65

    if-eq v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->c:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->c:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120c1c

    goto :goto_0

    :cond_1
    const v0, 0x7f121644

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->e:Lmiuix/recyclerview/widget/RecyclerView;

    aput-object v1, v0, v5

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->d:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x8c

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    new-array v0, v4, [Loj/l;

    const-string v1, "\u663e\u793a\u7cfb\u7edf\u5e94\u7528"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/idprovider/ui/OAIDSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-array v0, v4, [Loj/l;

    const-string v1, "\u8ddf\u8e2a\u6807\u8bc6\u7ba1\u7406"

    invoke-static {v2, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lqj/d0;->e([Loj/l;)Ljava/util/HashMap;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0}, Lmb/b;->g(Ljava/lang/String;Ljava/util/Map;)V

    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f0b0a65

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->c:Z

    if-eqz v1, :cond_1

    const v1, 0x7f120c1c

    goto :goto_1

    :cond_1
    const v1, 0x7f121644

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
