.class Lcom/miui/antivirus/ui/MainContentFrame$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/MainContentFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/ui/MainContentFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/Boolean;

.field final d:Z


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/ui/MainContentFrame;ILjava/lang/Boolean;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->b:I

    iput-object p3, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->c:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/ui/MainContentFrame;ILjava/lang/Boolean;ZLcom/miui/antivirus/ui/MainContentFrame$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antivirus/ui/MainContentFrame$c;-><init>(Lcom/miui/antivirus/ui/MainContentFrame;ILjava/lang/Boolean;Z)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/ui/MainContentFrame;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->f(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->h(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->h(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->i(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/common/customview/ScoreTextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->j(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->k(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->l(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->m(Lcom/miui/antivirus/ui/MainContentFrame;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->n(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/antivirus/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainContentFrame;->n(Lcom/miui/antivirus/ui/MainContentFrame;)Lcom/miui/antivirus/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/antivirus/ui/d;->dismiss()V

    :cond_3
    iget-boolean v0, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->d:Z

    iget v2, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->b:I

    iget-object v3, p0, Lcom/miui/antivirus/ui/MainContentFrame$c;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/miui/antivirus/ui/MainContentFrame;->o(Lcom/miui/antivirus/ui/MainContentFrame;ZIZ)V

    new-instance v0, Lcom/miui/antivirus/ui/MainContentFrame$b;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/miui/antivirus/ui/MainContentFrame$b;-><init>(Lcom/miui/antivirus/ui/MainContentFrame;Lcom/miui/antivirus/ui/MainContentFrame$a;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
