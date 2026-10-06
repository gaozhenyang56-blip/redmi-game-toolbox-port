.class Lmiuix/internal/widget/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/f;->configurationChanged(Landroid/content/res/Configuration;)V
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

    iput-object p1, p0, Lmiuix/internal/widget/f$b;->a:Lmiuix/internal/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lmiuix/internal/widget/f$b;->a:Lmiuix/internal/widget/f;

    iget-object v0, v0, Lmiuix/internal/widget/f;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmiuix/internal/widget/f$b;->a:Lmiuix/internal/widget/f;

    invoke-static {v0}, Lmiuix/internal/widget/f;->access$500(Lmiuix/internal/widget/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/internal/widget/f$b;->a:Lmiuix/internal/widget/f;

    invoke-static {v0}, Lmiuix/internal/widget/f;->access$500(Lmiuix/internal/widget/f;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/internal/widget/f$b;->a:Lmiuix/internal/widget/f;

    invoke-static {v1, v0}, Lmiuix/internal/widget/f;->access$200(Lmiuix/internal/widget/f;Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method
