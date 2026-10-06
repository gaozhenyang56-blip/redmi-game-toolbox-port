.class public abstract Lmiuix/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiuix/os/AsyncTaskWithProgress$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/fragment/app/FragmentManager;

.field private b:I

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private volatile l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field private final m:Lmiuix/os/AsyncTaskWithProgress$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/os/AsyncTaskWithProgress;->n:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->b:I

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->d:Ljava/lang/CharSequence;

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->e:I

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->f:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->g:Z

    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->h:Z

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->i:I

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->j:I

    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->k:I

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$b;

    invoke-direct {v0, p0, v1}, Lmiuix/os/AsyncTaskWithProgress$b;-><init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$a;)V

    iput-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->m:Lmiuix/os/AsyncTaskWithProgress$b;

    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic a(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method static synthetic b(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->j:I

    return p0
.end method

.method static synthetic c(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method static synthetic d(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->h:Z

    return p0
.end method

.method static synthetic e(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->i:I

    return p0
.end method

.method static synthetic f(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->k:I

    return p0
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->g:Z

    return p0
.end method

.method static synthetic i(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$b;
    .locals 0

    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->m:Lmiuix/os/AsyncTaskWithProgress$b;

    return-object p0
.end method

.method static synthetic j(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->b:I

    return p0
.end method

.method static synthetic k(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->c:I

    return p0
.end method

.method static synthetic l(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic m(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->e:I

    return p0
.end method

.method static synthetic n(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->a:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 3

    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->n:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->o()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    sget-object p1, Lmiuix/os/AsyncTaskWithProgress;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->o()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiuix/os/AsyncTaskWithProgress;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->a:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->a0(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-boolean v2, p0, Lmiuix/os/AsyncTaskWithProgress;->g:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress;->a:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->p([Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs p([Ljava/lang/Integer;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->k:I

    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->l:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget v0, p0, Lmiuix/os/AsyncTaskWithProgress;->k:I

    invoke-virtual {p1, v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->b0(I)V

    :cond_0
    return-void
.end method

.method public q(Z)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->g:Z

    return-object p0
.end method

.method public r(Z)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->h:Z

    return-object p0
.end method

.method public s(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->i:I

    return-object p0
.end method

.method public t(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->j:I

    return-object p0
.end method
