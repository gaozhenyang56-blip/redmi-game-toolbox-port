.class public Lcom/miui/gamebooster/ui/SelectGameLandActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lt5/q$b;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/SelectGameLandActivity$c;,
        Lcom/miui/gamebooster/ui/SelectGameLandActivity$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Landroid/util/Pair;",
        ">;",
        "Lt5/q$b;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lt5/q;

.field private k:Lt5/q;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/miui/gamebooster/service/IGameBooster;

.field private final r:Ljava/lang/Object;

.field private s:Z

.field private t:Ljava/util/List;
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

.field u:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->r:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->t:Ljava/util/List;

    new-instance v0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;-><init>(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->u:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->q:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->q:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->r:Ljava/lang/Object;

    return-object p0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->t:Ljava/util/List;

    return-object p0
.end method

.method private k0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {}, Lx4/a0;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;-><init>(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private l0(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {p0, v2}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private n0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;ZLcom/miui/gamebooster/model/d;)V
    .locals 3
    invoke-virtual {p3}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    if-eqz v0, :done
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p:Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->q:Lcom/miui/gamebooster/service/IGameBooster;
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

.method private o0(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/d;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/d;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100067

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p2

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100142

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p0(ZLcom/miui/gamebooster/model/d;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    iget-boolean p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->s:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p1, p2}, Lt5/q;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l0(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l0(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f10002f

    invoke-virtual {v2, v5, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v5, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lt5/q;->c(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m0(Lq0/c;Landroid/util/Pair;)V

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->s:Z

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o0(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->s:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->updateSearchResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public m0(Lq0/c;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;",
            "Landroid/util/Pair;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10002c

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o0(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->g:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lt5/q;->c(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lt5/q;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method public n(Lt5/q;Landroid/widget/CompoundButton;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

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

    move-result-object v0

    const v1, 0x7f0e02a3

    invoke-static {p1, p2, v0, v1}, Lx4/t;->O(Ljava/lang/String;ILandroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->i:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const v0, 0x7f1301da

    goto :goto_0

    :cond_0
    const v0, 0x7f1301d9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01b6

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    invoke-static {}, La8/i0;->b()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->u:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lx4/v;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const p1, 0x7f0b0139

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->i:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0817

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f0b008b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f0b0816

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->e:Landroid/widget/ListView;

    const p1, 0x7f0b008a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f:Landroid/widget/ListView;

    const p1, 0x7f0b036d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->g:Landroid/view/View;

    const p1, 0x7f0b0578

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lt5/q;

    invoke-direct {p1, p0}, Lt5/q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    invoke-virtual {p1, p0}, Lt5/q;->b(Lt5/q$b;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->j:Lt5/q;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lt5/q;

    invoke-direct {p1, p0}, Lt5/q;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    invoke-virtual {p1, p0}, Lt5/q;->b(Lt5/q$b;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k:Lt5/q;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100142

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100067

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {v0, v2, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x70

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, La8/b2;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k0()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Landroid/util/Pair;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/gamebooster/ui/SelectGameLandActivity$c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity$c;-><init>(Landroid/content/Context;Lcom/miui/gamebooster/ui/SelectGameLandActivity$a;)V

    return-object p1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->t:Ljava/util/List;

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
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->u:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lx4/v;->x(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->hideKeyboard(Landroid/view/View;)V

    :cond_0
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

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {p0}, La8/k2;->w(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public r(Lt5/q;Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;
    move-result-object v1
    invoke-static {p0, v1, p3}, Lcom/gzy/redmiport/GameStore;->save(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    move-result v1
    if-nez v1, :port_saved
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z
    move-result v1
    if-eq v1, p3, :port_abort
    invoke-virtual {p2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :port_abort
    return-void
    :port_saved
    invoke-virtual {p1, p3}, Lcom/miui/gamebooster/model/d;->g(Z)V

    invoke-direct {p0, p0, p3, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameLandActivity;ZLcom/miui/gamebooster/model/d;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v0}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->o0(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, p3, p1}, Lcom/miui/gamebooster/ui/SelectGameLandActivity;->p0(ZLcom/miui/gamebooster/model/d;)V

    return-void
.end method
