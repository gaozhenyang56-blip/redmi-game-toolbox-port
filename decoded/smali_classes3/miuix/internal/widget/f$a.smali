.class Lmiuix/internal/widget/f$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/internal/widget/f;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/f;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmiuix/internal/widget/f$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/f$a;->b(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    iget-object v0, v0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    invoke-static {v0, p1}, Lmiuix/internal/widget/f;->access$200(Lmiuix/internal/widget/f;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    invoke-static {v0}, Lmiuix/internal/widget/f;->access$000(Lmiuix/internal/widget/f;)Lmiuix/internal/widget/f$g;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/internal/widget/f$g;->c:Z

    iget-object v0, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/f$a;->a:Lmiuix/internal/widget/f;

    invoke-static {v0}, Lmiuix/internal/widget/f;->access$100(Lmiuix/internal/widget/f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmiuix/internal/widget/e;

    invoke-direct {v1, p0, v0}, Lmiuix/internal/widget/e;-><init>(Lmiuix/internal/widget/f$a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
