.class public abstract Lcom/miui/common/ui/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/ui/a$c;,
        Lcom/miui/common/ui/a$b;,
        Lcom/miui/common/ui/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimView:",
        "Landroid/view/View;",
        ":",
        "Lcom/miui/common/ui/a$b;",
        "VideoView:",
        "Landroid/view/View;",
        ":",
        "Lcom/miui/common/ui/a$b;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected a:Lcom/miui/common/ui/a$a;

.field protected b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAnimView;"
        }
    .end annotation
.end field

.field protected c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVideoView;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    iput-object p1, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    invoke-direct {p0}, Lcom/miui/common/ui/a;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lx4/a0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    :goto_0
    iput-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/ui/a;->getAnimView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/ui/a;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    :goto_0
    check-cast v0, Lcom/miui/common/ui/a$b;

    invoke-interface {v0}, Lcom/miui/common/ui/a$b;->release()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    :goto_0
    check-cast v0, Lcom/miui/common/ui/a$b;

    invoke-interface {v0}, Lcom/miui/common/ui/a$b;->startAnim()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    :goto_0
    check-cast v0, Lcom/miui/common/ui/a$b;

    invoke-interface {v0}, Lcom/miui/common/ui/a$b;->a()V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/common/ui/a$a;->a:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected abstract getAnimView()Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnimView;"
        }
    .end annotation
.end method

.method protected abstract getVideoView()Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVideoView;"
        }
    .end annotation
.end method

.method public setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/ui/a;->a:Lcom/miui/common/ui/a$a;

    sget-object v1, Lcom/miui/common/ui/a$a;->b:Lcom/miui/common/ui/a$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/ui/a;->b:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/ui/a;->c:Landroid/view/View;

    :goto_0
    check-cast v0, Lcom/miui/common/ui/a$b;

    invoke-interface {v0, p1}, Lcom/miui/common/ui/a$b;->setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V

    return-void
.end method
