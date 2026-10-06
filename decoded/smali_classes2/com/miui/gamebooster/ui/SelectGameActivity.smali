.class public Lcom/miui/gamebooster/ui/SelectGameActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lcom/miui/gamebooster/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/SelectGameActivity$g;,
        Lcom/miui/gamebooster/ui/SelectGameActivity$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/q;",
        ">;>;",
        "Lcom/miui/gamebooster/ui/c$a;"
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "com.miui.gamebooster.ui.SelectGameActivity"


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lmiuix/recyclerview/widget/RecyclerView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/miui/gamebooster/ui/c;

.field private i:Landroid/content/pm/PackageManager;

.field protected j:Lmiuix/view/l;

.field private k:Ljava/lang/Object;

.field private l:Lcom/miui/gamebooster/service/IGameBooster;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Landroidx/recyclerview/widget/RecyclerView$m;

.field q:Lo4/a$a;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field s:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/text/TextWatcher;

.field private v:Lmiuix/view/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->n:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->o:Ljava/util/List;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$a;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->q:Lo4/a$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->r:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$c;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->s:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$d;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$e;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->u:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameActivity$f;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->v:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->l:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/SelectGameActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->l:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic h0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/SelectGameActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->v:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->u:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/SelectGameActivity;Lcom/miui/gamebooster/ui/SelectGameActivity;ZLcom/miui/gamebooster/model/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/ui/SelectGameActivity;->z0(Lcom/miui/gamebooster/ui/SelectGameActivity;ZLcom/miui/gamebooster/model/d;)V

    return-void
.end method

.method static synthetic n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->u0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic p0(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/util/List;Lcom/miui/gamebooster/model/r;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->v0(Ljava/util/List;Lcom/miui/gamebooster/model/r;)I

    move-result p0

    return p0
.end method

.method static synthetic q0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->o:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->e:Landroid/view/View;

    return-object p0
.end method

.method private u0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->p:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    move v4, v1

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    new-instance v5, Lc3/o;

    invoke-direct {v5}, Lc3/o;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/q;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc3/o;->f(Ljava/lang/String;)V

    add-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/miui/gamebooster/ui/SelectGameActivity$b;

    invoke-direct {p1, p0, v0}, Lcom/miui/gamebooster/ui/SelectGameActivity$b;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/util/Map;)V

    invoke-static {p1}, Ls4/c$b;->b(Lu4/c;)Ls4/c$b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ls4/c$b;->c(I)Ls4/c$b;

    move-result-object p1

    invoke-virtual {p1}, Ls4/c$b;->a()Ls4/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->p:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/q;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    iget-object v6, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {p0, v8}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->A0(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->u0(Ljava/util/List;)V

    return-void
.end method

.method private v0(Ljava/util/List;Lcom/miui/gamebooster/model/r;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/d;",
            ">;",
            "Lcom/miui/gamebooster/model/r;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private w0()V
    .locals 2

    const-string v0, "gb_gamead_data_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lc7/a;->a()Lc7/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lc7/a;->c(Landroid/app/Application;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private y0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private z0(Lcom/miui/gamebooster/ui/SelectGameActivity;ZLcom/miui/gamebooster/model/d;)V
    .locals 3
    invoke-virtual {p3}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    if-eqz v0, :done
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->m:Ljava/util/ArrayList;
    if-eqz v1, :done
    if-eqz p2, :remove
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :notify
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    goto :notify
    :remove
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :notify
    :try_start
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->l:Lcom/miui/gamebooster/service/IGameBooster;
    if-eqz v0, :try_end
    invoke-interface {v0, v1}, Lcom/miui/gamebooster/service/IGameBooster;->Z1(Ljava/util/List;)V
    :try_end
    .catch Ljava/lang/Throwable; {:try_start .. :try_end} :fail
    :done
    return-void
    :fail
    move-exception v0
    const-string v1, "Notify original game list"
    invoke-static {v1, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V
    return-void
.end method


# virtual methods
.method public A0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->o()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/ui/c;->n(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->x0(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Landroid/view/View;Lq6/i;I)V
    .locals 1

    const p1, 0x7f0b0a9f

    invoke-virtual {p2, p1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1209fa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0e02a3

    invoke-static {p1, p2, p3, v0}, Lx4/t;->O(Ljava/lang/String;ILandroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->j:Lmiuix/view/l;

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;Lq6/i;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->y0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e04a5

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->i:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;
    move-result-object v2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->q:Lo4/a$a;

    invoke-virtual {v2, v3}, La8/i0;->a(Lo4/a$a;)V

    const v2, 0x7f0b06d4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->k(II)V

    const v2, 0x7f0b0a23

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->e:Landroid/view/View;

    const v3, 0x7f0b0379

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->g:Landroid/view/View;

    new-instance v3, Lcom/miui/gamebooster/ui/c;

    invoke-direct {v3, p0}, Lcom/miui/gamebooster/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    new-instance v4, Lv5/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    move v1, p1

    :cond_0
    iget-boolean v5, p0, Lcom/miui/common/base/BaseActivity;->mTabletSplitMode:Z

    iget-object v6, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->s:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v4, v1, v5, v6, p1}, Lv5/c;-><init>(ZZLandroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    invoke-virtual {v3, v4}, Lcom/miui/gamebooster/ui/c;->m(Lq6/b;)Lcom/miui/gamebooster/ui/c;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/ui/c;->y(Lcom/miui/gamebooster/ui/c$a;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->h:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->e:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->f:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->w0()V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v1, 0x70

    invoke-virtual {p1, v1, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "addedGames"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->d:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/ui/SelectGameActivity$g;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->i:Landroid/content/pm/PackageManager;

    invoke-direct {p1, p0, p2}, Lcom/miui/gamebooster/ui/SelectGameActivity$g;-><init>(Lcom/miui/gamebooster/ui/SelectGameActivity;Landroid/content/pm/PackageManager;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    invoke-virtual {v0}, La8/i0;->d()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->y0()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "page_name"

    const-string v2, "add_game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gs_event_pv"

    invoke-static {v1, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->j:Lmiuix/view/l;

    return-void
.end method

.method public x0(Lq0/c;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    iput-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->d()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002c

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->A0(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->u0(Ljava/util/List;)V

    return-void
.end method
